//
//  UCMeditorRuntimeMethodTestFile.m
//  UCRuntimeKit_Tests
//
//  Created by Link on 2019/1/10.
//  Copyright © 2019 Link. All rights reserved.
//

#import "UCMeditorRuntimeMethodTestFile.h"
#import <UCRuntimeKit/UCMediatorArgument.h>
#import <UIKit/UIKit.h>
@implementation UCMeditorRuntimeMethodTestFile

//参数测试
- (void)noResultNoArgumentMethod {}
- (void)noResultOneArguMethod:(UCMediatorArgument *)argu {
    NSLog(@"🍎🍎🍎🍎🍎🍎🍎🍎%@",argu.arguDict);
}
- (void)noResultTwoArguMethod:(id)argu1 argu2:(id)argu2{
    UCMediatorArgument *arg = argu1;
    NSLog(@"🍎🍎🍎🍎🍎🍎🍎🍎🍎%@",arg.arguDict);
}

//返回值测试
- (int)returnIntNoArgumentMethod {return 10;}
- (unsigned int)returnUIntNoArgumentMethod {unsigned int a = 14; return a;}
- (short)returnShortNoArgumentMethod {short a = 11; return a;}
- (unsigned short)returnUShortNoArgumentMethod {unsigned short a = 12; return a;}
- (long)returnLongNoArgumentMethod {long a = 12; return a;}
- (unsigned long)returnULongNoArgumentMethod {unsigned long a = 17; return a;}
- (long long)returnLongLongNoArgumentMethod {long long a = 16; return a;}
- (unsigned long long)returnULongLongNoArgumentMethod {long long a = 15; return a;}
- (float)returnFloatNoArgumentMethod {return 0.1f;}
- (double)returnDoubleNoArgumentMethod {return 0.1F;}
- (char)returnCharNoArgumentMethod {return 'a';}
- (unsigned char)returnUCharNoArgumentMethod {unsigned char a = 'b'; return a;}
- (BOOL)returnYesNoArgumentMethod {return YES;}
- (BOOL)returnNoNoArgumentMethod {return NO;}
- (bool)returnTrueNoArgumentMethod {return true;}

// objc返回值
- (NSInteger)returnIntegerNoArgumentMethod {return 1;}
- (NSUInteger)returnUIntegerNoArgumentMethod {NSUInteger a = 3; return a;}
- (CGFloat)returnCGFloatNoArgumentMethod {CGFloat a = 0.1; return a;}
- (NSString *)returnStringNoArgumentMethod {return @"a";}
- (id)returnIDNoArgumentMethod {return @"返回值id";}
- (NSArray *)returnArrayNoArgumentMethod {return @[@1, @2, @3];}
- (NSDictionary *)returnDictNoArgumentMethod {return @{@"key1": @"value"};}
- (NSNumber *)returnNumberNoArgumentMethod {return [NSNumber numberWithInt:1];}
@end
