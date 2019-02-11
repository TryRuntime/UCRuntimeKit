//
//  UCMediatorObjcCategorySwiftTest.m
//  UCRuntimeKit_Tests
//
//  Created by Link913 on 2019/1/14.
//  Copyright © 2019 Link. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <UCRuntimeKit/UCRuntimeKit.h>
#import "UCMediator+ObjcCategorySwift.h"

@interface UCMediatorObjcCategorySwiftTest : XCTestCase

@end

@implementation UCMediatorObjcCategorySwiftTest

- (void)testNoArguNoReturn {
    [[UCMediator sharedInstance] testObjcCategorySwiftNoArguNoReturn:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
}

- (void)testNoArguReturnInt {
    id result = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnInt:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    int a = [result intValue];
    XCTAssert(a == 1, @"返回值异常");
}

- (void)testNoArguReturnUInt {
    id result = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnUInt:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    unsigned int a = [result unsignedIntValue];
    XCTAssert(a == 2, @"返回值异常");
}

- (void)testNoArguReturnShort {
    id result = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnShort:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    short a = [result shortValue];
    XCTAssert(a == 3, @"返回值异常");
}

- (void)testNoArguReturnUShort {
    id result = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnUShort:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    unsigned short a = [result unsignedShortValue];
    XCTAssert(a == 4, @"返回值异常");
}

- (void)testNoArguReturnLong {
    id result = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnLong:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    long a = [result longValue];
    XCTAssert(a == 5, @"返回值异常");
}

- (void)testNoArguReturnLongLong {
    id result = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnLongLong:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    long long a = [result longLongValue];
    XCTAssert(a == 6, @"返回值异常");
}

- (void)testNoArguReturnULongLong {
    id result = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnULongLong:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    unsigned long long a = [result unsignedLongLongValue];
    XCTAssert(a == 7, @"返回值异常");
}

- (void)testNoArguReturnFloat {
    id result = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnFloat:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    float a = [result floatValue];
    XCTAssert(fabs(a - 0.1) < 0.000001, @"返回值异常");
}

- (void)testNoArguReturnDouble {
    id result = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnDouble:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    double a = [result doubleValue];
    XCTAssert(a == 0.2, @"返回值异常");
}

- (void)testNoArguReturnChar {
    id result = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnChar:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    char a = [result charValue];
    XCTAssert(a == 'A', @"返回值异常");
}

- (void)testNoArguReturnUChar {
    id result = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnUChar:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    unsigned char a = [result unsignedCharValue];
    XCTAssert(a == 'B', @"返回值异常");
}

- (void)testNoArguReturnTrue {
    id result = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnTrue:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    BOOL a = [result boolValue];
    XCTAssert(a == YES, @"返回值异常");
}

- (void)testNoArguReturnFalse {
    id result = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnFalse:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    BOOL a = [result boolValue];
    XCTAssert(a == NO, @"返回值异常");
}

- (void)testNoArguReturnInteger {
    id result = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnInteger:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    NSInteger a = [result integerValue];
    XCTAssert(a == 1, @"返回值异常");
}

- (void)testNoArguReturnCGFloat {
    id result = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnCGFloat:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    CGFloat a = [result floatValue];
    XCTAssert(fabs(a - 0.2) < 0.000001, @"返回值异常");
}

- (void)testNoArguReturnNSString {
    NSString *a = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnNSString:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    XCTAssert([a isEqualToString:@"123"], @"返回值异常");
}

- (void)testNoArguReturnString {
    NSString *a = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnString:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    XCTAssert([a isEqualToString:@"456"], @"返回值异常");
}

- (void)testNoArguReturnAny {
    NSString *a = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnAny:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    XCTAssert([a isEqualToString:@"789"], @"返回值异常");
}

- (void)testNoArguReturnArray {
    NSArray *a = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnArray:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    NSArray *temp = @[@1, @2, @3];
    XCTAssert(a.hash == temp.hash, @"返回值异常");
}

- (void)testNoArguReturnStringArray {
    NSArray *a = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnStringArray:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    NSArray *temp = @[@"1", @"2", @"3"];
    XCTAssert(a.hash == temp.hash, @"返回值异常");
}

- (void)testNoArguReturnNSStringArray {
    NSArray *a = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnNSStringArray:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    NSArray *temp = @[@"4", @"5", @"6"];
    XCTAssert(a.hash == temp.hash, @"返回值异常");
}

- (void)testNoArguReturnDictionary {
    NSDictionary *a = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnDictionary:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    NSDictionary *temp = @{@"key": @1};
    XCTAssert(a.hash == temp.hash, @"返回值异常");
}

- (void)testNoArguReturnNSDictionary {
    NSDictionary *a = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnNSDictionary:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    NSDictionary *temp = @{@"key": @2};
    XCTAssert(a.hash == temp.hash, @"返回值异常");
}

- (void)testNoArguReturnNSNumber {
    NSNumber *a = [[UCMediator sharedInstance] testObjcCategorySwiftNoArguReturnNSNumber:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    XCTAssert(a.intValue == 1, @"返回值异常");
}

- (void)testSuccessBlock {
    [[UCMediator sharedInstance] testObjcCategorySwiftSuccessBlock:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
}

- (void)testReturnArgu {
    UCMediatorArgument *result = [[UCMediator sharedInstance] testObjcCategorySwiftReturnSelf:^(NSError * _Nonnull error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    NSDictionary *temp = @{@"key": @"1"};
    XCTAssert(result.arguDict.hash == temp.hash, @"返回值异常");
}
@end
