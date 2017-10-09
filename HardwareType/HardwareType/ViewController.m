//
//  ViewController.m
//  HardwareType
//
//  Created by dev on 2017/10/9.
//  Copyright © 2017年 dev. All rights reserved.
//

#import "ViewController.h"
#import "Utils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"----------%@-------",[Utils deviceModelName]);
    
    NSLog(@"-----判断是否为iPhone X：%d-----",CGSizeEqualToSize(CGSizeMake(375.f, 812.f), [UIScreen mainScreen].bounds.size));
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
