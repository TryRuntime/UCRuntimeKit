//
//  UCMediatorArgument.h
//  Expecta
//
//  Created by Link913 on 2019/1/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UCMediatorArgument : NSObject
@property (nullable, copy, nonatomic) NSDictionary *arguDict;
@property (copy, nonatomic) void (^completionCallBack)(NSDictionary *result) ;
@property (copy, nonatomic) void (^failureCallBack)(NSError *error);
@end

NS_ASSUME_NONNULL_END
