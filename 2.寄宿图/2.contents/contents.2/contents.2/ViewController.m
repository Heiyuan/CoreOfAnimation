//
//  ViewController.m
//  contents.2
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
//    [self.view addSubview:layerView];
    layerView.backgroundColor = [UIColor whiteColor];
    
    UIImage *image = [UIImage imageNamed:@"gou.jpeg"];
    //这个是属性直接设置成图片.
    layerView.layer.contents = (__bridge id) image.CGImage;
#pragma MARK: cotentMode一样，contentsGravity的目的是为了决定内容在图层的边界中怎么对齐
    /*
     kCAGravityCenter
     kCAGravityTop
     kCAGravityBottom
     kCAGravityLeft
     kCAGravityRight
     kCAGravityTopLeft
     kCAGravityTopRight
     kCAGravityBottomLeft
     kCAGravityBottomRight
     kCAGravityResize
     kCAGravityResizeAspect   在图层中等比例拉伸以适应图层的边界
     kCAGravityResizeAspectFill
     */
    layerView.layer.contentsGravity = kCAGravityResizeAspect;
#pragma MARK:maskToBounds
    //UIView有一个叫做clipsToBounds的属性可以用来决定是否显示超出边界的内容，CALayer对应的属性叫做masksToBounds，把它设置为YES，雪人就在边界里
//    layerView.clipsToBounds = YES;
//    layerView.layer.masksToBounds = YES;
#pragma MARK:contentsScale属性定义了寄宿图的像素尺寸和视图大小的比例，默认情况下它是一个值为1.0的浮点数
    //    layerView.layer.contentsScale = [UIScreen mainScreen].scale;
#pragma MARK:contentsRect
    //CALayer的contentsRect属性允许我们在图层边框里显示寄宿图的一个子域。这涉及到图片是如何显示和拉伸的，所以要比contentsGravity灵活多了1
//    layerView.layer.contentsRect = CGRectMake(0, 0, 1.f, 1.f);
#pragma MARK:contentsCenter
    //contentsCenter其实是一个CGRect，它定义了一个固定的边框和一个在图层上可拉伸的区域。 改变contentsCenter的值并不会影响到寄宿图的显示，除非这个图层的大小改变了，你才看得到效果。
    self.view.layer.contentsGravity = kCAGravityResizeAspect;
    self.view.layer.contents = (__bridge id) image.CGImage;
    self.view.layer.contentsCenter = CGRectMake(0.3, 0.3, 0.75, 0.75);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
