//
//  UCAppDelegate.m
//  UCRuntimeKit
//
//  Created by Link on 01/09/2019.
//  Copyright (c) 2019 Link. All rights reserved.
//

#import "UCAppDelegate.h"
#import <UCRuntimeKit/UCMediator.h>
#import <UCRuntimeKit/UCMediatorAppdelegateArguments.h>
#import "UCAppdelegateReceiver.h"

@implementation UCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UCMediatorAppdelegateArguments *argObj = [UCMediatorAppdelegateArguments new];
    [argObj addElement:application];
    [argObj addElement:launchOptions];
    
    [[UCMediator sharedInstance] performAppDelegateTarget:@"UCAppdelegateReceiver" actionName:@"application:didFinishLaunchingWithOptions:" params:argObj];
    
    [[UCMediator sharedInstance] performAppDelegateTargetObject:[UCAppdelegateReceiver new] actionName:@"application:didFinishLaunchingWithOptions:" params:argObj];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{

}

@end
