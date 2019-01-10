//
//  UCMeditorRuntimeMethodTestFile.m
//  UCRuntimeKit_Tests
//
//  Created by Link on 2019/1/10.
//  Copyright © 2019 Link. All rights reserved.
//

#import "UCMeditorRuntimeMethodTestFile.h"
#import <UCRuntimeKit/UCMediatorArgument.h>
@implementation UCMeditorRuntimeMethodTestFile

- (void)noResultNoArgumentMethod {
    NSLog(@"🍎🍎🍎🍎🍎🍎🍎1,无参无返回值");
}

- (void)noResultOneArguMethod:(UCMediatorArgument *)argu {
    NSLog(@"🍎🍎🍎🍎🍎🍎🍎2,有一个参数无返回值,参数:%@",argu.arguDict);
}
@end
