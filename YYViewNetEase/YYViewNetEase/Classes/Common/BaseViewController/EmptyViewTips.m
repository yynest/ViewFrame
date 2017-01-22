//
//  EmptyViewTips.m
//  QianShanJY
//
//  Created by iosdev on 15/12/9.
//  Copyright © 2015年 chinasun. All rights reserved.
//

#import "EmptyViewTips.h"

@interface EmptyViewTips () {
    NSArray *imgList;
    NSArray *tipList;
}

@end

@implementation EmptyViewTips

/*
 EmptyViewTypeFavorites = 0,    //我的收藏
 EmptyViewTypeTopic,            //我的话题
 EmptyViewTypeSocial,           //我的评论
 EmptyViewTypeHealthReport,     //检查报告
 EmptyViewTypeAppointment,      //预约订单
 EmptyViewTypeStore,            //商城订单
 EmptyViewTypeInquiry,          //问诊记录
 EmptyViewTypeRemind,           //用药提醒
 EmptyViewTypeHospital,         //附近医院
 EmptyViewTypeBloodPressure,    //血压记录
 */
- (instancetype)initWithFrame:(CGRect)frame {
    if(self = [super initWithFrame:frame]) {
        imgList = @[@"noData",@"noData",@"noNetwork",@"noData",@"noData",@"noData",@"noData",@"noData",@"noData",@"noData"];
        tipList = @[@"暂时没有问诊数据",@"暂时没有患者数据",@"网络连接不可用",@"还没有检查报告",@"暂时没有问诊记录",@"还没有商城订单",@"还没有问诊记录",@"还没有用药提醒",@"附近还没有医院",@"还没有血压记录"];
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGFloat width = CGRectGetWidth(rect);
    UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, width, width)];
    imgView.image = [UIImage imageNamed:imgList[self.type]];
    
    [self addSubview:imgView];
    
    UILabel *tipLabel = [[UILabel alloc]initWithFrame:CGRectMake(-width/2, width, width*2, 20)];
    tipLabel.text = tipList[self.type];
    tipLabel.textAlignment = NSTextAlignmentCenter;
    tipLabel.textColor = [UIColor lightGrayColor];
   
    [self addSubview:tipLabel];
}

@end
