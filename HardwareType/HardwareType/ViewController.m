//
//  ViewController.m
//  HardwareType
//
//  Created by dev on 2017/10/9.
//  Copyright © 2017年 dev. All rights reserved.
//

#define kStatusBarHeight ([[UIApplication sharedApplication] statusBarFrame].size.height)
#define KISIphoneX (kStatusBarHeight == 20.f?NO:YES)

#import "ViewController.h"
#import "Utils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"----------%@-------",[Utils deviceModelName]);
    
    NSLog(@"-----判断是否为iPhone X：%d-----",CGSizeEqualToSize(CGSizeMake(375.f, 812.f), [UIScreen mainScreen].bounds.size));
    
    NSLog(@"-----statusBarHeight:%f------是否为iPhone X：%d------",kStatusBarHeight,KISIphoneX);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
