//
//  UCMeditorRuntimeTest.m
//  UCRuntimeKit_Tests
//
//  Created by Link on 2019/1/10.
//  Copyright © 2019 Link. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <UCRuntimeKit/UCMediator.h>
#import "UCMeditorRuntimeMethodTestFile.h"

@interface UCMeditorRuntimeTest : XCTestCase

@end

@implementation UCMeditorRuntimeTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
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

- (void)testNoResultNoArgumentMethod {

    [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                              action:@"noResultNoArgumentMethod"
                                              params:nil
                                          completion:nil
                                             failure:nil];
}

- (void)testNoResultOneArguMethod {
    [[UCMediator sharedInstance] nativePerformTarget:@"UCMeditorRuntimeMethodTestFile"
                                              action:@"noResultOneArguMethod:"
                                              params:@{@"key": @"我是参数"}
                                          completion:nil
                                             failure:nil];
}
@end
