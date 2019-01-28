//
//  UCViewController.m
//  UCRuntimeKit
//
//  Created by Link on 01/09/2019.
//  Copyright (c) 2019 Link. All rights reserved.
//

#import "UCViewController.h"
#import "UCRuntimeKit_Example-Swift.h"
#import "UCObjcModule1ViewController.h"

@interface UCViewController ()

@end

@implementation UCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    UIViewController *vc = [[UCSwiftModule1ViewController alloc] init];
    
    UIViewController *vc = [UCObjcModule1ViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
