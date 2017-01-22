//
//  Common.h
//  QianShanJYDoctor
//
//  Created by iosdev on 2016/10/19.
//  Copyright © 2016年 QSYJ. All rights reserved.
//

#ifndef CommonDefined_h
#define CommonDefined_h



//screen width and height
#define MAIN_SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define MAIN_SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height


//默认图片，头像
#define IMAGE_DEFAULT       [UIImage imageNamed:@"default_image"]
#define IMAGE_HEAD_DEFAULT  [UIImage imageNamed:@"default_imageHead"]
//边距
#define NO_VIEW_EDGEDISTANCE 16


//打印log:输出需要信息的同时, 还输出所在类、 函数(方法)名以及行数
#ifdef DEBUG
#define DLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
#define DLog(...)
#endif


// ----------相关通知宏定义------------
//通知：修改用户信息
#define Notifi_User_Info_Change @"Notifi_User_Info_Change"
//通知:第三方登录回调
#define Notifi_Third_Login      @"Notifi_Third_Login"


//app 内网外网环境宏定义
#define Common_NetSetting @"Common_NetSetting"


//判断NSString 对象是否为空
#define _noNull(str) (str == nil || [str isEqualToString:@"(null)"]? @"":str)



#endif /* CommonDefined_h */


