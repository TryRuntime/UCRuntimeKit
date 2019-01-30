//
//  UCMediator+SwiftCategorySwift.h
//  UCRuntimeKit_Example
//
//  Created by Link on 2019/1/30.
//  Copyright © 2019 Link. All rights reserved.
//

#import <UCRuntimeKit/UCRuntimeKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UCMediator (SwiftCategorySwift)
- (void)testSwiftCategorySwiftNoArguNoReturn:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnInt:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnUInt:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnShort:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnUShort:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnLong:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnLongLong:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnULongLong:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnFloat:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnDouble:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnChar:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnUChar:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnTrue:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnFalse:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnInteger:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnCGFloat:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnNSString:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnString:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnAny:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnArray:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnStringArray:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnNSStringArray:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnDictionary:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnNSDictionary:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftNoArguReturnNSNumber:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftSuccessBlock:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategorySwiftReturnSelf:(void (^)(NSError *))invokeErrorBlock;

@end

NS_ASSUME_NONNULL_END
