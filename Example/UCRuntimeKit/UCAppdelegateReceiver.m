//
//  UCAppdelegateReceiver.m
//  UCRuntimeKit_Example
//
//  Created by Link on 2019/1/13.
//  Copyright © 2019 Link. All rights reserved.
//

#import "UCAppdelegateReceiver.h"

@implementation UCAppdelegateReceiver

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    NSLog(@"调用了UCAppdelegateReceiver的appdelegate方法");
    return YES;
}
@end
