//
//  BaseViewController.h
//  QianShanJYDoctor
//
//  Created by iosdev on 2016/10/17.
//  Copyright © 2016年 QSYJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseHeader.h"
#import "EmptyViewTips.h"
#define kNavLeft  [self setNavLeftImage:@"return"]
#define kMoreNavLeftTag 10000
#define kMoreNavRightTag 20000
@interface CustomBaseViewController : UIViewController
{

     EmptyViewTips *emptyViewTips;
}
@property (nonatomic, strong)NSString *navTitle;
@property (nonatomic, strong)NSString *NavLeftImage;        //导航左按钮图片名
@property (nonatomic, strong)NSString *NavRightImage;       //导航右按钮图片名
@property (nonatomic, strong)NSArray  *NavLeftImageArray;  //导航右侧多按钮图片
@property (nonatomic, strong)NSArray  *NavRightImageArray;  //导航右侧多按钮图片

- (void)navLeftBut:(UIButton *)sender;          //导航左侧按钮点击方法
- (void)navRightBut:(UIButton *)sender;         //导航右侧按钮点击方法
///导航多个左侧按钮点击方法（tag值越小，越靠前, tag值从10000开始）
- (void)moreNavLeftBut:(UIButton *)sender;
///导航多个右侧按钮点击方法(tag值越小，越靠后, tag值从20000开始)
- (void)moreNavRightBut:(UIButton *)sender;

//空页面
- (void)addEmptyViewTipsWithType:(EmptyViewType)type;
@end
