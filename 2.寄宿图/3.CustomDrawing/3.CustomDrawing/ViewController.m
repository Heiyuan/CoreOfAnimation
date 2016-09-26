//
//  ViewController.m
//  3.CustomDrawing
//
//  Created by 刘志远 on 2016/9/26.
//  Copyright © 2016年 刘志远. All rights reserved.
//

#import "ViewController.h"
#define RANDOM_COLOR [UIColor colorWithRed:arc4random() % 256 / 255.f green:arc4random() % 256 / 255.f blue:arc4random() % 256 / 255.f alpha:1.f] //随机色

@interface ViewController ()<CALayerDelegate>
@property (nonatomic,strong) UIView *layerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _layerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    _layerView.center = self.view.center;
    [self.view addSubview:_layerView];
    
    
    
    CALayer *blueLayer = [CALayer layer];
    blueLayer.frame = CGRectMake(50, 50, 100, 100);
    blueLayer.backgroundColor = [UIColor blueColor].CGColor;
    //set contriller aslayer delegate
    blueLayer.delegate = self;
    //ensure that layer backing image user correct scale
    blueLayer.contentsScale = [UIScreen mainScreen].scale;
    [_layerView.layer addSublayer:blueLayer];
    
    [blueLayer display];
    
}

- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx{
    //draw a thick red cirtcle
    CGContextSetLineWidth(ctx, 10.0f);
    CGContextSetStrokeColorWithColor(ctx, RANDOM_COLOR.CGColor);
    CGContextStrokeEllipseInRect(ctx, layer.bounds);}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
