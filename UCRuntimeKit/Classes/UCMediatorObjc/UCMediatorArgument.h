//
//  UCMediatorArgument.h
//  Expecta
//
//  Created by Link913 on 2019/1/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UCMediatorArgument : NSObject
@property (nullable, copy, nonatomic) NSDictionary<NSString *, id> *arguDict;
@property (copy, nonatomic) void (^completionCallBack)( NSDictionary * _Nullable result) ;
@property (copy, nonatomic) void (^failureCallBack)(NSError * _Nullable error);
@end

NS_ASSUME_NONNULL_END
