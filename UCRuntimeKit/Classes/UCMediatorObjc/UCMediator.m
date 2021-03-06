//
//  UCMediator.m
//  UCRuntimeKit
//
//  Created by Link913 on 2019/1/10.
//

#import "UCMediator.h"
#import <objc/runtime.h>
#import "UCMediatorArgument.h"
#import "UCMediatorParser.h"
#import "UCOtherMacro.h"
#import "UCMediatorError.h"
#import "UCMediatorAppdelegateArguments.h"

@interface UCMediator()
@property (strong, nonatomic) UCMediatorParser *mediatorParser;
@end

@implementation UCMediator

+ (nonnull instancetype)sharedInstance{
    static UCMediator *_mediator;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _mediator = [[UCMediator alloc] init];
    });
    return _mediator;
}

/**
 第三方，以及外界app通过url调用
 调用这个api,只会给方法的第一个参数传智,接收的参数类型在运行时是UCMediatorArgument
 */
- (nullable id)thirdPartyPerformActionWithUrl:(nonnull NSString *)urlStr
                                   completion:(nullable void (^)(NSDictionary<NSString *, id> *result))completion {
    return [self thirdPartyPerformActionWithUrl:urlStr completion:completion error:nil];
}

/**
 本地url调用，不推荐，内部可以解析url以及参数，推荐内部调用使用下面的利用字符串调用
 调用这个api,只会给方法的第一个参数传智,接收的参数类型在运行时是UCMediatorArgument
 */
- (nullable id)nativePerformActionWithUrl:(nonnull NSString *)urlStr
                                      arg:(nullable NSDictionary<NSString *, id> *)arg
                               completion:(nullable void (^)(NSDictionary<NSString *, id> *result))completionCallBack
                                  failure:(nullable void (^)(NSError *error))failureCallBack {
    
    return [self nativePerformActionWithUrl:urlStr arg:arg completion:completionCallBack failure:failureCallBack error:nil];
}

/**
 本地利用字符串调用，推荐，内部也做了处理
 调用这个api,只会给方法的第一个参数传智,接收的参数类型在运行时是UCMediatorArgument
 */
- (nullable id)nativePerformTarget:(nonnull NSString *)targetName
                            action:(nonnull NSString *)actionName
                            params:(nullable NSDictionary<NSString *, id> *)params
                        completion:(nullable void (^)(NSDictionary<NSString *, id> *result))completionCallBack
                           failure:(nullable void (^)(NSError *error))failureCallBack {
    return [self nativePerformTarget:targetName action:actionName params:params
                          completion:completionCallBack failure:failureCallBack error:nil];
}

/**
 动态调用各个模块的appdelegate方法
 支持多参数,这里的参数只做转发不校验
 */
- (nullable id)performAppDelegateTarget:(nonnull NSString *)targetName
                             actionName:(nonnull NSString *)actionName
                                 params:(nonnull UCMediatorAppdelegateArguments *)paramsObj {
    
    return [self performAppDelegateTarget:targetName actionName:actionName params:paramsObj error:nil];
}

/**
 直接向这个对象动态调用appdelegate的方法
 支持多参数,这里的参数只做转发不校验
 */
- (nullable id)performAppDelegateTargetObject:(nonnull id)targetObj
                                   actionName:(nonnull NSString *)actionName
                                       params:(nonnull UCMediatorAppdelegateArguments *)paramsObj {
    
    return [self performAppDelegateTargetObject:targetObj actionName:actionName params:paramsObj error:nil];
}

#pragma mark - 异常处理
- (nullable id)thirdPartyPerformActionWithUrl:(nonnull NSString *)urlStr
                                   completion:(nullable void (^)(NSDictionary<NSString *, id> *result))completion
                                        error:(NSError * __autoreleasing *)error {
    
    //这里做url拦截,过滤的操作,根据返回的布尔值判断是否调用
    if (self.urlFilterDelegate && [self.urlFilterDelegate respondsToSelector:@selector(isCanOpenURL:)]) {
        if (![self.urlFilterDelegate isCanOpenURL:urlStr]) {
            UCLog(@"该URL,业务层不允许访问APP内部");
            if (error != NULL) {
                *error = UCMediatorErrorWithURLNotAllowed();
            }
            return nil;
        }
    }
    
    return [self nativePerformActionWithUrl:urlStr arg:nil completion:completion failure:nil error:error];
}

- (nullable id)nativePerformActionWithUrl:(nonnull NSString *)urlStr
                                      arg:(nullable NSDictionary<NSString *, id> *)arg
                               completion:(nullable void (^)(NSDictionary<NSString *, id> *result))completionCallBack
                                  failure:(nullable void (^)(NSError *error))failureCallBack
                                    error:(NSError * __autoreleasing *)error {
    
    if (arg && ![arg isKindOfClass:[NSDictionary class]]) {
        UCLog(@"参数类型错误,只能穿入字典!请仔细检查.参数:%@, 参数类型:%@", arg, NSStringFromClass([arg class]));
        if (error != NULL) {
            *error = UCMediatorErrorWithParms();
        }
        return nil;
    }
    
    NSMutableDictionary *afterParserMDict = [self.mediatorParser extractParametersFromURL:urlStr];
    
    if ([afterParserMDict[kUCMediatorErrorKey] isEqual: @(YES)]) {
        UCLog(@"url参数解析错误, url:%@",urlStr);
        if (error != NULL) {
            *error = UCMediatorErrorWithURLParameterAnalysis();
        }
        return nil;
    }
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunused-variable"
    NSString *scheme = afterParserMDict[kUCMediatorScheme];
    NSString *moduleName = afterParserMDict[kUCMediatorModule];
    NSString *action = afterParserMDict[kUCMediatorAction];
    NSString *symbol = afterParserMDict[kUCMediatorSymbol];
#pragma clang diagnostic pop
    
    // 提取出query中的参数,只要value 形成一个字典
    NSDictionary *queryParams = [self.mediatorParser extractParamsFromQuery: afterParserMDict[kUCMediatorQuery]];
    
    // 拼装query参数和手动传入参数
    NSMutableDictionary *finalArg = [self.mediatorParser composeParams:queryParams attachParams:arg];
    
    //参数处理
    UCMediatorArgument *argObj = [self p_createArgsArrayWithArg:(NSDictionary *)finalArg completion:completionCallBack failure:failureCallBack error:error];
    
    //发消息
    Class classObj = NSClassFromString(moduleName);
    SEL selObj = NSSelectorFromString(action);
    
    if (checkTargetAndAction(classObj, selObj, error)) {
        //正常调用
        return [self p_safePerformAction:selObj target:[classObj new] paramsArray:@[argObj] error:error];
    } else {
        //调用失败
        return nil;
    }
}

- (nullable id)nativePerformTarget:(nonnull NSString *)targetName
                            action:(nonnull NSString *)actionName
                            params:(nullable NSDictionary<NSString *, id> *)params
                        completion:(nullable void (^)(NSDictionary<NSString *, id> *result))completionCallBack
                           failure:(nullable void (^)(NSError *error))failureCallBack
                             error:(NSError * __autoreleasing *)error {
    
    Class classObj = NSClassFromString(targetName);
    SEL actionObj = NSSelectorFromString(actionName);
    
    if (checkTargetAndAction(classObj, actionObj, error)) {
        //正常调用
        
        //参数处理
        UCMediatorArgument *argObj = [self p_createArgsArrayWithArg:params
                                                         completion:completionCallBack
                                                            failure:failureCallBack
                                                              error:error];
        
        return [self p_safePerformAction:actionObj target:[classObj new] paramsArray:@[argObj] error:error];
    } else {
        //调用失败
        return nil;
    }
}

/**
 本地利用字符串调用，推荐，内部也做了处理,包含了error处理,主要是提供给swift使用的,因为swift不支持**error
 调用这个api,只会给方法的第一个参数传智,接收的参数类型在运行时是UCMediatorArgument
 */
- (nullable id)nativePerformTarget:(nonnull NSString *)targetName
                            action:(nonnull NSString *)actionName
                            params:(nullable NSDictionary<NSString *, id> *)params
                        completion:(nullable void (^)(NSDictionary<NSString *, id> *result))completionCallBack
                           failure:(nullable void (^)(NSError *error))failureCallBack
                  invokeErrorBlock:(nullable void (^)(NSError *error))invokeErrorBlock {
    NSError *error;
    id obj = [self nativePerformTarget:targetName action:actionName params:params completion:completionCallBack failure:failureCallBack error:&error];
    if (invokeErrorBlock && error) {
        invokeErrorBlock(error);
    }
    return obj;
}

- (nullable id)performAppDelegateTarget:(nonnull NSString *)targetName
                             actionName:(nonnull NSString *)actionName
                                 params:(nonnull UCMediatorAppdelegateArguments *)paramsObj
                                  error:(NSError **)error {
    
    if (![actionName containsString:@"application"]) {
        UCLog(@"检查调用action,本方法仅用来派发appdelegate的各个方法");
        if (error != NULL) {
            *error = UCMediatorErrorWithAppdelegateRuntimeInvoke();
        }
        return nil;
    }
    
    Class classObj = NSClassFromString(targetName);
    SEL actionObj = NSSelectorFromString(actionName);
    if (!checkTargetAndAction(classObj, actionObj, error)) {
        return nil;
    }
    
    //正常调用
    return [self p_safePerformAction:actionObj target:[classObj new] paramsArray:paramsObj.getArgumentsArray error:nil];
}

- (nullable id)performAppDelegateTargetObject:(nonnull id)targetObj
                                   actionName:(nonnull NSString *)actionName
                                       params:(nonnull UCMediatorAppdelegateArguments *)paramsObj
                                        error:(NSError **)error {
    
    if (![actionName containsString:@"application"]) {
        UCLog(@"检查调用action,本方法仅用来派发appdelegate的各个方法");
        if (error != NULL) {
            *error = UCMediatorErrorWithAppdelegateRuntimeInvoke();
        }
        return nil;
    }
    
    Class classObj = [targetObj class];
    SEL actionObj = NSSelectorFromString(actionName);
    if (!checkTargetAndAction(classObj, actionObj, error)) {
        return nil;
    }
    
    //正常调用
    return [self p_safePerformAction:actionObj target:targetObj paramsArray:paramsObj.getArgumentsArray error:nil];
    
}
#pragma mark - private

static inline BOOL checkTargetAndAction(Class target, SEL action, NSError **error) {
    NSString *errorStr;
    if (!target) {
        errorStr = [NSString stringWithFormat:@"*%@组件不存在, 请检查调用", target];
        if (error != NULL) {
            *error = UCMediatorErrorWithUndefindTarget();
        }
    } else if (!action) {
        NSString *actionStr = NSStringFromSelector(action);
        errorStr = [NSString stringWithFormat:@"*%@组件%@方法调用错误, 请检查调用", target, actionStr];
        if (error != NULL) {
            *error = UCMediatorErrorWithUndefindSelctor();
        }
    } else if (![[target new] respondsToSelector:action]) {
        NSString *actionStr = NSStringFromSelector(action);
        errorStr = [NSString stringWithFormat:@"*%@组件没有实现%@方法, 请检查调用", target, actionStr];
        if (error != NULL) {
            *error = UCMediatorErrorWithUndefindSelctor();
        }
    }
    if (errorStr) { UCLog(@"%@", errorStr);}
    
    return errorStr.length == 0;
}

- (nonnull UCMediatorArgument *)p_createArgsArrayWithArg:(nullable NSDictionary *)arg
                                              completion:(nullable void (^)(NSDictionary<NSString *, id> *result))completionCallBack
                                                 failure:(nullable void (^)(NSError *error))failureCallBack
                                                   error:(NSError **)error {
    
    if (arg != nil && ![arg isKindOfClass:[NSDictionary class]]) {
        UCLog(@"参数类型错误,只能穿入字典!请仔细检查.参数:%@, 参数类型:%@", arg, NSStringFromClass([arg class]));
        if (error != NULL) {
            *error = UCMediatorErrorWithParms();
        }
        return nil;
    }
    
    UCMediatorArgument *argObj = [[UCMediatorArgument alloc] init];
    if (arg) {
        argObj.arguDict = arg;
    }else{
        argObj.arguDict = nil;
    }
    
    if (completionCallBack) {
        argObj.completionCallBack = completionCallBack;
    }else{
        void(^tempBlock)(NSDictionary *) = ^(NSDictionary *result){};
        argObj.completionCallBack = tempBlock;
    }
    
    if (failureCallBack) {
        argObj.failureCallBack = failureCallBack;
    }else{
        void (^tempBlock)(NSError *error) = ^(NSError *error){};
        argObj.failureCallBack = tempBlock;
    }
    return argObj;
}

- (nullable id)p_safePerformAction:(nonnull SEL)action
                            target:(nonnull NSObject *)target
                       paramsArray:(NSArray *)paramsArray
                             error:(NSError **)error {
    NSMethodSignature* methodSig = [target methodSignatureForSelector:action];
    if(methodSig == nil) {
        UCLog(@"函数签名异常");
        if (error != NULL) {
            *error = UCMediatorErrorWithUndefindMethodSignature();
        }
        return nil;
    }
    const char* retType = [methodSig methodReturnType];
    
    //如果是对象则直接处理
    if (strcmp(retType, @encode(id)) == 0) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        return [target performSelector:action withObject:paramsArray.firstObject];
#pragma clang diagnostic pop
    }
    
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
    NSString *selStr = NSStringFromSelector(action);
    
    //参数处理
    NSUInteger paramsCount = [selStr componentsSeparatedByString:@":"].count - 1;
    if (!paramsArray) {paramsCount = 0;}
    
    if (paramsCount > 0 && paramsCount >= paramsArray.count) {
        for (int i = 0; i < paramsArray.count; i ++) {
            id param = paramsArray[i];
            if (param == [NSNull null]) {
                param = nil;
            }
            [invocation setArgument:&param atIndex:i + 2];
        }
    } else if (paramsCount > 0 && paramsCount < paramsArray.count) {
        UCLog(@"runtime参数数量与SEL所需数量异常");
        if (error != NULL) {
            *error = UCMediatorErrorWithRuntimeParams();
        }
        return nil;
    } else if (paramsCount == 0 &&
               [paramsArray.firstObject isKindOfClass:[UCMediatorArgument class]]) {
        UCMediatorArgument *argu = paramsArray.firstObject;
        if (argu.arguDict != nil) {
            UCLog(@"runtime参数数量与SEL所需数量异常");
            if (error != NULL) {
                *error = UCMediatorErrorWithRuntimeParams();
            }
            return nil;
        }
    }
    
    [invocation setSelector:action];
    [invocation setTarget:target];
    
    if (strcmp(retType, @encode(void)) == 0) {
        [invocation invoke];
        return nil;
    }
    
    if (strcmp(retType, @encode(int)) == 0) {
        [invocation invoke];
        int result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(unsigned int)) == 0) {
        [invocation invoke];
        unsigned int result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(short)) == 0) {
        [invocation invoke];
        short result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(unsigned short)) == 0) {
        [invocation invoke];
        unsigned short result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(long)) == 0) {
        [invocation invoke];
        long result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(long long)) == 0) {
        [invocation invoke];
        long long result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(float)) == 0) {
        [invocation invoke];
        float result = 0.0f;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(char)) == 0) {
        [invocation invoke];
        char result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(unsigned char)) == 0) {
        [invocation invoke];
        unsigned char result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(NSInteger)) == 0) {
        [invocation invoke];
        NSInteger result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(BOOL)) == 0) {
        [invocation invoke];
        BOOL result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(CGFloat)) == 0) {
        [invocation invoke];
        CGFloat result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    if (strcmp(retType, @encode(NSUInteger)) == 0) {
        [invocation invoke];
        NSUInteger result = 0;
        [invocation getReturnValue:&result];
        return @(result);
    }
    
    UCLog(@"方法无法被调用,请检查返回值的基本数据类型,或者自行增加返回值类型");
    if (error != NULL) {
        *error = UCMediatorErrorWithUndefindReturnType();
    }
    return nil;
}

#pragma mark - set && get
- (UCMediatorParser *)mediatorParser {
    if (!_mediatorParser) {
        _mediatorParser = [UCMediatorParser new];
    }
    return _mediatorParser;
}

#pragma mark - error function
static inline NSError * UCMediatorErrorWithParms() {
    return [[NSError alloc] initWithDomain:kUCMediatorErrorDomain
                                      code:kUCMediatorErrorParmsCode
                                  userInfo:@{kUCMediatorErrorInfoKey: kUCMediatorErrorParmsInfo}];
}

static inline NSError * UCMediatorErrorWithURLParameterAnalysis() {
    return [[NSError alloc] initWithDomain:kUCMediatorErrorDomain
                                      code:kUCMediatorErrorURLParameterAnalysisCode
                                  userInfo:@{kUCMediatorErrorInfoKey: kUCMediatorErrorURLParameterAnalysisInfo}];
}

static inline NSError * UCMediatorErrorWithUndefindTarget() {
    return [[NSError alloc] initWithDomain:kUCMediatorErrorDomain
                                      code:kUCMediatorErrorUndefindTargetCode
                                  userInfo:@{kUCMediatorErrorInfoKey: kUCMediatorErrorUndefindTargetInfo}];
}

static inline NSError * UCMediatorErrorWithUndefindSelctor() {
    return [[NSError alloc] initWithDomain:kUCMediatorErrorDomain
                                      code:kUCMediatorErrorUndefindSelctorCode
                                  userInfo:@{kUCMediatorErrorInfoKey: kUCMediatorErrorUndefindSelctorInfo}];
}

static inline NSError * UCMediatorErrorWithUndefindMethodSignature() {
    return [[NSError alloc] initWithDomain:kUCMediatorErrorDomain
                                      code:kUCMediatorErrorUndefindMethodSignatureCode
                                  userInfo:@{kUCMediatorErrorInfoKey: kUCMediatorErrorUndefindMethodSignatureInfo}];
}

static inline NSError * UCMediatorErrorWithRuntimeParams() {
    return [[NSError alloc] initWithDomain:kUCMediatorErrorDomain
                                      code:kUCMediatorErrorRuntimeParamsCode
                                  userInfo:@{kUCMediatorErrorInfoKey: kUCMediatorErrorRuntimeParamsInfo}];
}

static inline NSError * UCMediatorErrorWithAppdelegateRuntimeInvoke() {
    return [[NSError alloc] initWithDomain:kUCMediatorErrorDomain
                                      code:kUCMediatorErrorAppdelegateRuntimeInvokeCode
                                  userInfo:@{kUCMediatorErrorInfoKey: kUCMediatorErrorAppdelegateRuntimeInvokeInfo}];
}

static inline NSError * UCMediatorErrorWithUndefindReturnType() {
    return [[NSError alloc] initWithDomain:kUCMediatorErrorDomain
                                      code:kUCMediatorErrorUndefindReturnTypeCode
                                  userInfo:@{kUCMediatorErrorInfoKey: kUCMediatorErrorUndefindReturnTypeInfo}];
}

static inline NSError * UCMediatorErrorWithURLNotAllowed() {
    return [[NSError alloc] initWithDomain:kUCMediatorErrorDomain
                                      code:kUCMediatorErrorURLNotAllowedCode
                                  userInfo:@{kUCMediatorErrorInfoKey: kUCMediatorErrorURLNotAllowedInfo}];
}
@end

