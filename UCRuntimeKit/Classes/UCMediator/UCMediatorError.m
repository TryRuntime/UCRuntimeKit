//
//  UCMediatorError.m
//  Pods-UCRuntimeKit_Example
//
//  Created by Link913 on 2019/1/11.
//

#import "UCMediatorError.h"

NSString *const kUCMediatorErrorDomain = @"com.UCRuntimeKit.UCMediator";
NSString *const kUCMediatorErrorInfoKey = @"kUCMediatorErrorInfoKey";

NSUInteger const kUCMediatorErrorParmsCode = 7800;
NSString *const kUCMediatorErrorParmsInfo = @"参数错误";

NSUInteger const kUCMediatorErrorURLParameterAnalysisCode = 7801;
NSString *const kUCMediatorErrorURLParameterAnalysisInfo = @"参数错误";

NSUInteger const kUCMediatorErrorUndefindTargetCode = 7802;
NSString *const kUCMediatorErrorUndefindTargetInfo = @"组件没找到";

NSUInteger const kUCMediatorErrorUndefindSelctorCode = 7803;
NSString *const kUCMediatorErrorUndefindSelctorInfo = @"SEL没有被实现或传入为空";

NSUInteger const kUCMediatorErrorUndefindMethodSignatureCode = 7804;
NSString *const kUCMediatorErrorUndefindMethodSignatureInfo = @"函数签名异常";

NSUInteger const kUCMediatorErrorRuntimeParamsCode = 7805;
NSString *const kUCMediatorErrorRuntimeParamsInfo = @"runtime参数传入数量异常";

NSUInteger const kUCMediatorErrorAppdelegateRuntimeInvokeCode = 7806;
NSString *const kUCMediatorErrorAppdelegateRuntimeInvokeInfo = @"Runtime调用的不是appdelegate方法";
