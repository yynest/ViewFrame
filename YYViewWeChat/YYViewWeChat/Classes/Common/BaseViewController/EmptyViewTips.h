//
//  EmptyViewTips.h
//  QianShanJY
//
//  Created by iosdev on 15/12/9.
//  Copyright © 2015年 chinasun. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, EmptyViewType) {
    EmptyViewTypeRI = 0,    //远程问诊
    EmptyViewTypePM,            //患者管理
    EmptyViewTypeNoNetwork,           //网络连接不可用
    EmptyViewTypeHealthReport,     //检查报告
    EmptyViewTypeRIRecord,      //问诊记录
    EmptyViewTypeStore,            //商城订单
    EmptyViewTypeInquiry,          //问诊记录
    EmptyViewTypeRemind,           //用药提醒
    EmptyViewTypeHospital,         //附近医院
    EmptyViewTypeBloodPressure,    //血压记录
};

@interface EmptyViewTips : UIView

@property(nonatomic,assign)EmptyViewType type;
- (void)drawRect:(CGRect)rect;
@end
