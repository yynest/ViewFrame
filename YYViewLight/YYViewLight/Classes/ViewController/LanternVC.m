//
//  LanternVC.m
//  Eclipse
//
//  Created by QS on 2016/12/18.
//  Copyright © 2016年 QS. All rights reserved.
//  白光+呼吸模式

#import "LanternVC.h"

@interface LanternVC () {
    UIImageView *imgCircle;
}

@end

@implementation LanternVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect rect = CGRectMake(widthView*0.1, 0, widthView*0.8, widthView*0.8);
    imgCircle = [[UIImageView alloc] initWithFrame:rect];
    [self.view addSubview:imgCircle];
    imgCircle.image = [UIImage imageNamed:@"circle5"];
    
//    [self addCircle];
    
    //亮度
    [self addLanternSlider];
    
    //速度
    [self addSpeedSlider];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addCircle {
    /*
     *画实线圆
     */
    CAShapeLayer *solidLine =  [CAShapeLayer layer];
    CGMutablePathRef solidPath =  CGPathCreateMutable();
    solidLine.lineWidth = 2.0f ;
    solidLine.strokeColor = [UIColor colorMainLight].CGColor;
    solidLine.fillColor = [UIColor clearColor].CGColor;
    CGPathAddEllipseInRect(solidPath, nil, CGRectMake(widthView*0.2, widthView*0.1, widthView*0.6, widthView*0.6));
    solidLine.path = solidPath;
    CGPathRelease(solidPath);
    [self.view.layer addSublayer:solidLine];
}


- (void)sliderChangeLantern:(UISlider *)sender {
    CGFloat value = sender.value*10;
    NSLog(@"%f", value);
    
    int index = (int)value;
    imgCircle.image = [UIImage imageNamed:[NSString stringWithFormat: @"circle%d",index]];
}



@end
