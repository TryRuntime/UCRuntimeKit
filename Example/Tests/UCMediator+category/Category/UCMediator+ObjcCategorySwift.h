//
//  UCMediator+ObjcCategorySwift.h
//  UCRuntimeKit_Example
//
//  Created by Link on 2019/2/11.
//  Copyright © 2019 Link. All rights reserved.
//

#import <UCRuntimeKit/UCRuntimeKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UCMediator (ObjcCategorySwift)

- (void)testObjcCategorySwiftNoArguNoReturn:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnInt:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnUInt:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnShort:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnUShort:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnLong:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnLongLong:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnULongLong:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnFloat:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnDouble:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnChar:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnUChar:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnTrue:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnFalse:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnInteger:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnCGFloat:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnNSString:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnString:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnAny:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnArray:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnStringArray:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnNSStringArray:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnDictionary:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnNSDictionary:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftNoArguReturnNSNumber:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftSuccessBlock:(void (^)(NSError *))invokeErrorBlock;
- (id)testObjcCategorySwiftReturnSelf:(void (^)(NSError *))invokeErrorBlock;

@end

NS_ASSUME_NONNULL_END
