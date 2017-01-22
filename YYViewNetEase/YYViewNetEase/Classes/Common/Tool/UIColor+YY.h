//
//  UIColor+YY.h
//  YYWeChat
//
//  Created by iosdev on 2017/1/4.
//  Copyright © 2017年 opq. All rights reserved.
//

#import <UIKit/UIKit.h>

//十六进制颜色数值转换为UIColor
#define RGBACOLOR_HEX(rgbValue, alphaValue) \
[UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0x0000FF))/255.0 \
alpha:alphaValue]

@interface UIColor (YY)

/*****************规范颜色*****************/
/******************
 名称：主色调
 色值：0x31c37c
 颜色：绿色
 用途：导航栏，菜单栏，按钮，选中后高亮颜色，文字颜色
 */
+ (UIColor *)colorMain;

/******************
 名称：按钮选中
 色值：0x22ab68
 颜色：深绿色
 用途：按钮点击的颜色
 */
+ (UIColor *)colorClikcdBTGreen;
/*
 名称：按钮禁用
 色值：0xcecece
 颜色：深绿色
 用途：按钮禁用的颜色
 */
+ (UIColor *)colorDisableBTGrag;


/******************
 名称：文字颜色
 色值：0x404040
 颜色：黑色
 用途：标题
 */
+ (UIColor *)colorTextBlack;
/*
 名称：文字颜色
 色值：0x666666
 颜色：灰色
 用途：详情
 */
+ (UIColor *)colorTextGrag;
/*
 名称：文字颜色
 色值：0x999999
 颜色：淡灰色
 用途：提示
 */
+ (UIColor *)colorTextGragLight;

/******************
 名称：背景颜色
 色值：0xf5f5f5,0xedf5f0
 颜色：浅灰色,浅绿色
 用途：界面背景
 */
+ (UIColor *)colorBGGragLighter;
+ (UIColor *)colorBGGreenLighter;
/*
 名称：透明的背景颜色
 色值：0xffffff
 颜色：透明色
 用途：弱提醒-0.7，IM-0.5
 */
+ (UIColor *)colorBGWithAlpha:(CGFloat)alpha;

/******************
 名称：强调色
 色值：0xfdad1c
 颜色：黄色
 用途：强调
 */
+ (UIColor *)colorHighlightYellow;
/*
 名称：强调色
 色值：0xf15252
 颜色：红色
 用途：强调
 */
+ (UIColor *)colorHighlightRed;

/******************
 名称：边框
 色值：0xd1d1d1
 颜色：浅浅灰色
 用途：分割线
 */
+ (UIColor *)colorBorderGargLighter;
+ (UIColor *)colorBorderGargLighterWithAlpha:(CGFloat)alpha;

/*****************规范颜色*****************/

//由一个颜色生成图片,
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;
//图片变圆角
+ (id)createRoundedRectImage:(UIImage*)image size:(CGSize)size radius:(NSInteger)r;


//由一个颜色生成图片
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;


@end
