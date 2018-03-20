//
//  ViewController.m
//  HardwareType
//
//  Created by dev on 2017/10/9.
//  Copyright © 2017年 dev. All rights reserved.
//


#define KISIphoneX (CGSizeEqualToSize(CGSizeMake(375.f, 812.f), [UIScreen mainScreen].bounds.size) || CGSizeEqualToSize(CGSizeMake(812.f, 375.f), [UIScreen mainScreen].bounds.size))
#define kStatusBarHeight (KISIphoneX?(44.f):(20.f))

#import "ViewController.h"
#import "Utils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"----------%@-------",[Utils deviceModelName]);
    
    //竖屏 横屏 屏幕size
    NSLog(@"-------size:%@------",NSStringFromCGSize([UIScreen mainScreen].bounds.size));
    
    if (CGSizeEqualToSize(CGSizeMake(375.f, 812.f), [UIScreen mainScreen].bounds.size) || CGSizeEqualToSize(CGSizeMake(812.f, 375.f), [UIScreen mainScreen].bounds.size)) {
        
    }
    
    NSLog(@"-----判断是否为iPhone X：%d-----",CGSizeEqualToSize(CGSizeMake(375.f, 812.f), [UIScreen mainScreen].bounds.size));
    
    NSLog(@"-----statusBarHeight:%f------statusBarHeight:%f------是否为iPhone X：%d------",([[UIApplication sharedApplication] statusBarFrame].size.height),kStatusBarHeight,KISIphoneX);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
