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
 */
- (nullable id)thirdPartyPerformActionWithUrl:(nonnull NSString *)urlStr
                                   completion:(nullable void (^)(NSDictionary *result))completion {

    //这里做url拦截,过滤的操作,根据返回的布尔值判断是否调用
    return [self nativePerformActionWithUrl:urlStr arg:nil completion:completion failure:nil];
}

/**
 本地url调用，不推荐，内部可以解析url以及参数，推荐内部调用使用下面的利用字符串调用
 */
- (nullable id)nativePerformActionWithUrl:(nonnull NSString *)urlStr
                                      arg:(nullable NSDictionary *)arg
                               completion:(nullable void (^)(NSDictionary *result))completionCallBack
                                  failure:(nullable void (^)(NSError *error))failureCallBack {

    NSMutableDictionary *afterParserMDict = [self.mediatorParser extractParametersFromURL:urlStr];

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
    UCMediatorArgument *argObj = [self p_createArgsArrayWithArg:(NSDictionary *)finalArg completion:completionCallBack failure:failureCallBack];

    //发消息
    Class classObj = NSClassFromString(moduleName);
    NSString *finalAction = [NSString stringWithFormat:@"%@_%@",moduleName,action];
    SEL selObj = NSSelectorFromString(finalAction);
    
    if (afterParserMDict[kUCMediatorErrorKey]) {
        UCLog(@"url参数解析错误, url:%@",urlStr);
        return nil;
    }
    
    if ([self p_checkTargetAndAction:classObj actionName:selObj]) {
        //正常调用
        return [self p_safePerformAction:selObj target:[classObj new] paramsArray:@[argObj]];
    } else {
        //调用失败
        return nil;
    }
}

/**
 本地利用字符串调用，推荐，内部也做了处理
 */
- (nullable id)nativePerformTarget:(nonnull NSString *)targetName
                            action:(nonnull NSString *)actionName
                            params:(nullable NSDictionary *)params
                        completion:(nullable void (^)(NSDictionary *result))completionCallBack
                           failure:(nullable void (^)(NSError *error))failureCallBack {

    Class classObj = NSClassFromString(targetName);
    SEL actionObj = NSSelectorFromString(actionName);
    
    if ([self p_checkTargetAndAction:classObj actionName:actionObj]) {
        //正常调用
        
        //参数处理
        UCMediatorArgument *argObj = [self p_createArgsArrayWithArg:params completion:completionCallBack failure:failureCallBack];
        
        return [self p_safePerformAction:actionObj target:[classObj new] paramsArray:@[argObj]];
    } else {
        //调用失败
        return nil;
    }
}

/**
 动态调用各个模块的appdelegate方法
 */
- (BOOL)performAppDelegateTarget:(nonnull NSString *)targetName
                      actionName:(nonnull NSString *)actionName
                          params:(nonnull NSArray<id> *)paramsArray {

    if (![actionName containsString:@"application"]) {
        UCLog(@"检查调用action,本方法仅用来派发appdelegate的各个方法");
        return NO;
    }

    Class classObj = NSClassFromString(targetName);
    SEL actionObj = NSSelectorFromString(actionName);
    if (![self p_checkTargetAndAction:classObj actionName:actionObj]) {
        return NO;
    }

    //正常调用
    [self p_safePerformAction:actionObj target:[classObj new] paramsArray:paramsArray];

    return YES;
}

/**
 直接向这个对象动态调用appdelegate的方法
 */
- (BOOL)performAppDelegateTargetObject:(nonnull id)targetObj
                            actionName:(nonnull NSString *)actionName
                                params:(nonnull NSArray<id> *)paramsArray {
    
    if (![actionName containsString:@"application"]) {
        UCLog(@"检查调用action,本方法仅用来派发appdelegate的各个方法");
        return NO;
    }
    
    Class classObj = [targetObj class];
    SEL actionObj = NSSelectorFromString(actionName);
    if (![self p_checkTargetAndAction:classObj actionName:actionObj]) {
        return NO;
    }
    
    //正常调用
    [self p_safePerformAction:actionObj target:targetObj paramsArray:paramsArray];
    
    return YES;
}

#pragma mark - private

- (BOOL)p_checkTargetAndAction:(nonnull Class)target actionName:(nonnull SEL)action {
    
    NSString *errorStr;
    if (!target) {
        errorStr = [NSString stringWithFormat:@"*%@组件不存在, 请检查调用", target];
    } else if (!action) {
        NSString *actionStr = NSStringFromSelector(action);
        errorStr = [NSString stringWithFormat:@"*%@组件%@方法调用错误, 请检查调用", target, actionStr];
    } else if (![[target new] respondsToSelector:action]) {
        NSString *actionStr = NSStringFromSelector(action);
        errorStr = [NSString stringWithFormat:@"*%@组件没有实现%@方法, 请检查调用", target, actionStr];
    }
    UCLog(@"%@", errorStr);
    return errorStr.length == 0;
}

- (nonnull UCMediatorArgument *)p_createArgsArrayWithArg:(nullable NSDictionary *)arg
                                              completion:(nullable void (^)(NSDictionary *result))completionCallBack
                                                 failure:(nullable void (^)(NSError *error))failureCallBack {

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
                       paramsArray:(NSArray *)paramsArray {
    NSMethodSignature* methodSig = [target methodSignatureForSelector:action];
    if(methodSig == nil) {
        return nil;
    }
    const char* retType = [methodSig methodReturnType];
    
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSig];
    for (int i = 0; i < paramsArray.count; i ++) {
        id param = paramsArray[i];
        [invocation setArgument:&param atIndex:i + 2];
    }
    [invocation setSelector:action];
    [invocation setTarget:target];
    [invocation invoke];
    
    if (strcmp(retType, @encode(void)) == 0) {
        [invocation invoke];
        return nil;
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
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    //这里如果返回值都不满足会来到这里,只会穿参数字典中的第一个参数
    return [target performSelector:action withObject:paramsArray.firstObject];
#pragma clang diagnostic pop
}

#pragma mark - set && get
- (UCMediatorParser *)mediatorParser {
    if (!_mediatorParser) {
        _mediatorParser = [UCMediatorParser new];
    }
    return _mediatorParser;
}
@end
