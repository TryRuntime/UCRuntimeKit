//
//  UCMediatorUrlFilterDeledate.m
//  UCRuntimeKit_Example
//
//  Created by Link on 2019/1/13.
//  Copyright © 2019 Link. All rights reserved.
//

#import "UCMediatorUrlFilterDeledate.h"

@interface UCMediatorUrlFilterDeledate()

@end

@implementation UCMediatorUrlFilterDeledate

- (BOOL)isCanOpenURL:(nonnull NSString *)urlStr {
    if ([urlStr containsString:@"APP"]) {
        //这里应该写的是解析urlscheme
        return YES;
    } else {
        return NO;
    }
}

@end
