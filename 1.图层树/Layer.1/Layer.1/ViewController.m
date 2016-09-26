//
//  ViewController.m
//  Layer.1
//
//  Created by 刘志远 on 2016/9/26.
//  Copyright © 2016年 刘志远. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.75 green:0.75 blue:0.75 alpha:1.00];
    UIView *layerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    layerView.center = self.view.center;
    [self.view addSubview:layerView];
    layerView.backgroundColor = [UIColor whiteColor];
    
    
    
    CALayer *bluelayer = [CALayer layer];
    bluelayer.frame  = CGRectMake(50.f, 50.f, 100.f, 100.f);
    bluelayer.backgroundColor = [UIColor blueColor].CGColor;
    [layerView.layer addSublayer:bluelayer];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
