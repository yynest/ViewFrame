//
//  UIColor+YY.m
//  YYWeChat
//
//  Created by iosdev on 2017/1/4.
//  Copyright © 2017年 opq. All rights reserved.
//

#import "UIColor+YY.h"

@implementation UIColor (YY)

/*****************规范颜色*****************/
/*****************
 名称：主色调
 色值：0x31c37c
 颜色：绿色
 用途：导航栏，菜单栏，按钮，选中后高亮颜色，文字颜色
 */
+ (UIColor *)colorMain {
    return RGBACOLOR_HEX(0x31c37c, 1.0);
}

/*****************
 名称：按钮选中
 色值：0x22ab68
 颜色：深绿色
 用途：按钮点击的颜色
 */
+ (UIColor *)colorClikcdBTGreen {
    return RGBACOLOR_HEX(0x22ab68, 1.0);
}
/*
 名称：按钮禁用
 色值：0xcecece
 颜色：深绿色
 用途：按钮禁用的颜色
 */
+ (UIColor *)colorDisableBTGrag {
    return RGBACOLOR_HEX(0xcecece, 1.0);
}

/*****************
 名称：文字颜色
 色值：0x404040
 颜色：黑色
 用途：标题
 */
+ (UIColor *)colorTextBlack {
    return RGBACOLOR_HEX(0x404040, 1.0);
}
/*
 名称：文字颜色
 色值：0x666666
 颜色：灰色
 用途：详情
 */
+ (UIColor *)colorTextGrag {
    return RGBACOLOR_HEX(0x666666, 1.0);
}
/*
 名称：文字颜色
 色值：0x999999
 颜色：淡灰色
 用途：提示
 */
+ (UIColor *)colorTextGragLight {
    return RGBACOLOR_HEX(0x999999, 1.0);
}

/*****************
 名称：背景颜色
 色值：0xf5f5f5
 颜色：浅灰色
 用途：界面背景
 */
+ (UIColor *)colorBGGragLighter {
    return RGBACOLOR_HEX(0xf5f5f5, 1.0);
}
+ (UIColor *)colorBGGreenLighter {
    return RGBACOLOR_HEX(0xedf5f0, 1.0);
}
/*
 名称：透明的背景颜色
 色值：0xffffff
 颜色：透明色
 用途：弱提醒-0.7，IM-0.5
 */
+ (UIColor *)colorBGWithAlpha:(CGFloat)alpha {
    return RGBACOLOR_HEX(0x000000, alpha);
}

/*****************
 名称：强调色
 色值：0xfdad1c
 颜色：黄色
 用途：强调
 */
+ (UIColor *)colorHighlightYellow {
    return RGBACOLOR_HEX(0xfdad1c, 1.0);
}
/*
 名称：强调色
 色值：0xf15252
 颜色：红色
 用途：强调
 */
+ (UIColor *)colorHighlightRed {
    return RGBACOLOR_HEX(0xf15252, 1.0);
}

/*****************
 名称：边框
 色值：0xd1d1d1
 颜色：浅浅灰色
 用途：分割线
 */
+ (UIColor *)colorBorderGargLighter {
    return RGBACOLOR_HEX(0xd1d1d1, 1.0);
}
+ (UIColor *)colorBorderGargLighterWithAlpha:(CGFloat)alpha {
    return RGBACOLOR_HEX(0xd1d1d1, alpha);
}

/*****************规范颜色*****************/


//由一个颜色生成图片
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size {
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
