//
//  UCThirdPartUrlInvoke.m
//  UCRuntimeKit_Tests
//
//  Created by Link on 2019/1/12.
//  Copyright © 2019 Link. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <UCRuntimeKit/UCMediator.h>
#import "UCMediatorUrlFilterDeledate.h"

@interface UCThirdPartUrlInvoke : XCTestCase
@property(nonatomic, strong)UCMediatorUrlFilterDeledate *urlFilterDelegate;
@end

@implementation UCThirdPartUrlInvoke

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.urlFilterDelegate = [UCMediatorUrlFilterDeledate new];
    [UCMediator sharedInstance].urlFilterDelegate = self.urlFilterDelegate;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

#pragma mark - 权限
- (void)testUrlFilter {
    NSError *error;
    [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"QWE://UCMeditorRuntimeMethodTestFile/noResultNoArgumentMethod" completion:nil error:&error];
    XCTAssertNotNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}
#pragma mark - 参数
- (void)testNoResultNoArgumentMethod {
    NSError *error;
    [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/noResultNoArgumentMethod" completion:nil error:&error];
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testNoResultOneArguMethod {
    NSError *error;
    [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/noResultOneArguMethod:?key1=1&key2=2" completion:nil error:&error];
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testNoResultTwoArguMethod {
    NSError *error;
    [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/noResultTwoArguMethod:argu2:?key1=tfboy" completion:nil error:&error];
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

#pragma mark - 返回值
- (void)testReturnInt {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnIntNoArgumentMethod" completion:nil error:&error];
    int b = [a intValue];
    XCTAssert(b == 10, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnUInt {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnUIntNoArgumentMethod" completion:nil error:&error];
    unsigned int b = [a unsignedIntValue];
    XCTAssert(b == 14, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnShort {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnShortNoArgumentMethod" completion:nil error:&error];
    short b = [a shortValue];
    XCTAssert(b == 11, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testUShort {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnUShortNoArgumentMethod" completion:nil error:&error];
    unsigned short b = [a unsignedShortValue];
    XCTAssert(b == 12, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnLong {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnLongNoArgumentMethod" completion:nil error:&error];
    long b = [a longValue];
    XCTAssert(b == 12, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnULong {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnULongNoArgumentMethod" completion:nil error:&error];
    unsigned long b = [a unsignedLongValue];
    XCTAssert(b == 17, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnLongLong {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnLongLongNoArgumentMethod" completion:nil error:&error];
    long long b = [a longLongValue];
    XCTAssert(b == 16, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testRetunULongLong {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnULongLongNoArgumentMethod" completion:nil error:&error];
    unsigned long long b = [a unsignedLongLongValue];
    XCTAssert(b == 15, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnFloat {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnFloatNoArgumentMethod" completion:nil error:&error];
    float b = [a floatValue];
    XCTAssert(b == 0.1f, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnDouble {
    NSError *error;
    
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnDoubleNoArgumentMethod" completion:nil error:&error];
    double b = [a doubleValue];
    XCTAssert(b == 0.1F, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnChar {
    NSError *error;
    
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnCharNoArgumentMethod" completion:nil error:&error];
    char b = [a charValue];
    XCTAssert(b == 'a', @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnUChar {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnUCharNoArgumentMethod" completion:nil error:&error];
    unsigned char b = [a unsignedCharValue];
    XCTAssert(b == 'b', @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnBOOL {
    NSError *error1;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnYesNoArgumentMethod" completion:nil error:&error1];
    BOOL b = [a boolValue];
    XCTAssert(b == YES, @"返回值异常");
    XCTAssertNil(error1, @"error code = %ld, error message = %@",(long)error1.code, error1.userInfo[@"kUCMediatorErrorInfoKey"]);
    
    NSError *error2;
    
    id c = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnNoNoArgumentMethod" completion:nil error:&error2];
    BOOL d = [c boolValue];
    XCTAssert(d == NO, @"返回值异常");
    XCTAssertNil(error2, @"error code = %ld, error message = %@",(long)error2.code, error2.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnbool {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnTrueNoArgumentMethod" completion:nil error:&error];
    bool b = [a boolValue];
    XCTAssert(b == true, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

#pragma mark - Objc
- (void)testReturnNSIntrger {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnIntegerNoArgumentMethod" completion:nil error:&error];
    NSInteger b = [a integerValue];
    XCTAssert(b == 1, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnNSUIntrger {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnUIntegerNoArgumentMethod" completion:nil error:&error];
    NSUInteger b = [a integerValue];
    XCTAssert(b == 3, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnCGFloat {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnCGFloatNoArgumentMethod" completion:nil error:&error];
    CGFloat b = [a floatValue];
    XCTAssert(fabs(b - 0.1) < 0.0000001, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnNSString {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnStringNoArgumentMethod" completion:nil error:&error];
    XCTAssert([a isEqualToString:@"a"], @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnID {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnIDNoArgumentMethod" completion:nil error:&error];
    NSString *b = (NSString *)a;
    XCTAssert([b isEqualToString:@"返回值id"], @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnArray {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnArrayNoArgumentMethod" completion:nil error:&error];
    NSArray *b = (NSArray *)a;
    NSArray *c = @[@1, @2, @3];
    XCTAssert(b.hash == c.hash, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnDictionary {
    NSError *error;
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnDictNoArgumentMethod" completion:nil error:&error];
    NSArray *b = (NSArray *)a;
    NSDictionary *c = @{@"key1": @"value"};
    XCTAssert(b.hash == c.hash, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}

- (void)testReturnNumber {
    NSError *error;
    
    id a = [[UCMediator sharedInstance] thirdPartyPerformActionWithUrl:@"APP://UCMeditorRuntimeMethodTestFile/returnNumberNoArgumentMethod" completion:nil error:&error];
    NSNumber *b = (NSNumber *)a;
    XCTAssert(b.intValue == 1, @"返回值异常");
    XCTAssertNil(error, @"error code = %ld, error message = %@",(long)error.code, error.userInfo[@"kUCMediatorErrorInfoKey"]);
}
@end
