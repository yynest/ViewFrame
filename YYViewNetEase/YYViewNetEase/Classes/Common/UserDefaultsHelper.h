//
//  UserDefaultsHelper.h
//  QianShanJYDoctor
//
//  Created by iosdev on 2016/10/17.
//  Copyright © 2016年 QSYJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserDefaultsHelper : NSObject

//设置为默认值
+ (void)resetUserDefaults;
+ (void)clearUserDefaults;

//用户id数据
+ (void)setLoginUserID:(NSNumber *)strID;
+ (NSNumber *)getLoginUserID;

//录入初始化信息
+ (void)setInitInfoValues:(NSDictionary *)values;
+ (NSDictionary *)getInitInfoValues;


@end
