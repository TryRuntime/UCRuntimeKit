//
//  UCMediator+SwiftCategoryObjc.h
//  UCRuntimeKit_Example
//
//  Created by Link on 2019/1/31.
//  Copyright © 2019 Link. All rights reserved.
//

#import <UCRuntimeKit/UCRuntimeKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UCMediator (SwiftCategoryObjc)
- (void)testSwiftCategoryObjcNoArguNoReturn:(void (^)(NSError *))invokeErrorBlock;
- (void)testSwiftCategoryObjcOneArguNoReturn:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnInt:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnUInt:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnShort:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnUShort:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnLong:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnULong:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnLongLong:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnULongLong:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnFloat:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnDouble:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnChar:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnUChar:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnTrue:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnFalse:(void (^)(NSError *))invokeErrorBlock;

- (id)testSwiftCategoryObjcNoArguReturnInteger:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnUInteger:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnCGFloat:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnNSString:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnIntArray:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnNSDictionary:(void (^)(NSError *))invokeErrorBlock;
- (id)testSwiftCategoryObjcNoArguReturnNSNumber:(void (^)(NSError *))invokeErrorBlock;

- (void)testSwiftCategoryObjcBlock:(void (^)(NSError *))invokeErrorBlock;
@end

NS_ASSUME_NONNULL_END
