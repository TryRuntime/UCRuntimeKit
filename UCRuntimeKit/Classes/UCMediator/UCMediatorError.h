//
//  UCMediatorError.h
//  Pods-UCRuntimeKit_Example
//
//  Created by Link913 on 2019/1/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXPORT NSString *const kUCMediatorErrorDomain;
FOUNDATION_EXPORT NSString *const kUCMediatorErrorInfoKey;

//参数错误
FOUNDATION_EXPORT NSUInteger const kUCMediatorErrorParmsCode;
FOUNDATION_EXPORT NSString *const kUCMediatorErrorParmsInfo;

//URL参数解析错误
FOUNDATION_EXPORT NSUInteger const kUCMediatorErrorURLParameterAnalysisCode;
FOUNDATION_EXPORT NSString *const kUCMediatorErrorURLParameterAnalysisInfo;

//不包含组件
FOUNDATION_EXPORT NSUInteger const kUCMediatorErrorUndefindTargetCode;
FOUNDATION_EXPORT NSString *const kUCMediatorErrorUndefindTargetInfo;

//找不到sel
FOUNDATION_EXPORT NSUInteger const kUCMediatorErrorUndefindSelctorCode;
FOUNDATION_EXPORT NSString *const kUCMediatorErrorUndefindSelctorInfo;

//函数签名异常
FOUNDATION_EXPORT NSUInteger const kUCMediatorErrorUndefindMethodSignatureCode;
FOUNDATION_EXPORT NSString *const kUCMediatorErrorUndefindMethodSignatureInfo;

//runtime派发参数数量异常
FOUNDATION_EXPORT NSUInteger const kUCMediatorErrorRuntimeParamsCode;
FOUNDATION_EXPORT NSString *const kUCMediatorErrorRuntimeParamsInfo;

//非Appdelegate方法调用
FOUNDATION_EXPORT NSUInteger const kUCMediatorErrorAppdelegateRuntimeInvokeCode;
FOUNDATION_EXPORT NSString *const kUCMediatorErrorAppdelegateRuntimeInvokeInfo;

NS_ASSUME_NONNULL_END
