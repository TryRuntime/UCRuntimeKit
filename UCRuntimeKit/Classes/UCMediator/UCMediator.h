//
//  UCMediator.h
//  UCRuntimeKit
//
//  Created by Link913 on 2019/1/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UCMediator : NSObject

+ (nonnull instancetype)sharedInstance;

/**
 第三方，以及外界app通过url调用
 */
- (nullable id)thirdPartyPerformActionWithUrl:(nonnull NSString *)urlStr
                                   completion:(nullable void (^)(NSDictionary *result))completion;

/**
 本地url调用，不推荐，内部可以解析url以及参数，推荐内部调用使用下面的利用字符串调用
 */
- (nullable id)nativePerformActionWithUrl:(nonnull NSString *)urlStr
                                      arg:(nullable NSDictionary *)arg
                               completion:(nullable void (^)(NSDictionary *result))completionCallBack
                                  failure:(nullable void (^)(NSError *error))failureCallBack;

/**
 本地利用字符串调用，推荐，内部也做了处理
 */
- (nullable id)nativePerformTarget:(nonnull NSString *)targetName
                            action:(nonnull NSString *)actionName
                            params:(nullable NSDictionary *)params
                        completion:(nullable void (^)(NSDictionary *result))completionCallBack
                           failure:(nullable void (^)(NSError *error))failureCallBack;

/**
 根据字符串动态调用各个模块的appdelegate方法
 */
- (BOOL)performAppDelegateTarget:(nonnull NSString *)targetName
                      actionName:(nonnull NSString *)actionName
                          params:(nonnull NSArray<id> *)paramsArray;


/**
 直接向这个对象动态调用appdelegate的方法
 */
- (BOOL)performAppDelegateTargetObject:(nonnull id)targetObj
                            actionName:(nonnull NSString *)actionName
                                params:(nonnull NSArray<id> *)paramsArray;
@end

NS_ASSUME_NONNULL_END
