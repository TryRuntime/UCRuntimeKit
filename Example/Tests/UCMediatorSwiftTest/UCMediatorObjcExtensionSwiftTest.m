//
//  UCMediatorObjcExtensionSwiftTest.m
//  UCRuntimeKit_Tests
//
//  Created by Link913 on 2019/1/14.
//  Copyright © 2019 Link. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <UCRuntimeKit/UCRuntimeKit.h>
#import "UCRuntimeKit_Tests-Swift.h"

@interface UCMediatorObjcExtensionSwiftTest : XCTestCase

@end

@implementation UCMediatorObjcExtensionSwiftTest

- (void)testNoArguNoReturn {
    [[UCMediator sharedInstance] testObjcExtensionSwiftNoResultNoArgumentWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
}

- (void)testOneArguNoReturn {
    [[UCMediator sharedInstance] testObjcExtensionSwiftNoResultOneArgumentWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
}

- (void)testOneArguReturnInt {
    id result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnIntWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    int a = [result intValue];
    XCTAssert(a == 10, @"返回值异常");
}

- (void)testOneArguReturnUInt {
    id result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnUIntWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    unsigned int a = [result unsignedIntValue];
    XCTAssert(a == 14, @"返回值异常");
}

- (void)testOneArguReturnShort {
    id result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnShortWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    short a = [result shortValue];
    XCTAssert(a == 11, @"返回值异常");
}

- (void)testOneArguReturnUShort {
    id result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnUShortWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    unsigned short a = [result unsignedShortValue];
    XCTAssert(a == 12, @"返回值异常");
}

- (void)testOneArguReturnLong {
    id result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnLongWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    long a = [result longValue];
    XCTAssert(a == 12, @"返回值异常");
}

- (void)testOneArguReturnULong {
    id result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnULongWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    unsigned long a = [result unsignedLongValue];
    XCTAssert(a == 17, @"返回值异常");
}

- (void)testOneArguReturnLongLong {
    id result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnLongLongWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    long long a = [result longLongValue];
    XCTAssert(a == 16, @"返回值异常");
}

- (void)testOneArguReturnULongLong {
    id result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnULongLongWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    unsigned long long a = [result unsignedLongLongValue];
    XCTAssert(a == 15, @"返回值异常");
}

- (void)testOneArguReturnFloat {
    id result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnFloatWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    float a = [result floatValue];
    XCTAssert(fabs(a - 0.1) < 0.000001, @"返回值异常");
}

- (void)testOneArguReturnDouble {
    id result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnDoubleWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    double a = [result doubleValue];
    XCTAssert(fabs(a - 0.1) < 0.000001, @"返回值异常");
}

- (void)testOneArguReturnChar {
    id result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnCharWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    char a = [result charValue];
    XCTAssert(a == 'a', @"返回值异常");
}

- (void)testOneArguReturnUChar {
    id result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnUCharWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    unsigned char a = [result unsignedCharValue];
    XCTAssert(a == 'b', @"返回值异常");
}

- (void)testOneArguReturnYes {
    id result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnTrueWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    BOOL a = [result boolValue];
    XCTAssert(a == YES, @"返回值异常");
}

- (void)testOneArguReturnNo {
    id result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnFalseWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    BOOL a = [result boolValue];
    XCTAssert(a == NO, @"返回值异常");
}

- (void)testOneArguReturnCGFloat {
    id result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnCGFloatWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    CGFloat a = [result floatValue];
    XCTAssert(fabs(a - 0.1) < 0.000001, @"返回值异常");
}

- (void)testOneArguReturnNSString {
    NSString *result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnNSStringWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    XCTAssert([result isEqualToString:@"a"], @"返回值异常");
}

- (void)testOneArguReturnNSArray {
    NSArray *result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnArrayWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    NSArray *array = @[@1, @2, @3];
    XCTAssert(result.hash == array.hash, @"返回值异常");
}

- (void)testOneArguReturnNSDictionary {
    NSDictionary *result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnNSDictionaryWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    NSDictionary *dict = @{@"key1": @"value"};
    XCTAssert(result.hash == dict.hash, @"返回值异常");
}

- (void)testOneArguReturnNSNumber {
    NSNumber *result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnNSNumberWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    XCTAssert(result.intValue == 1, @"返回值异常");
}

- (void)testBlock {
    id result = [[UCMediator sharedInstance] testObjcExtensionSwiftNoArguReturnBlockWithInvokeError:^(NSError * error) {
        XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
    }];
    NSLog(@"%@",result);
}
@end
