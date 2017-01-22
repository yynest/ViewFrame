//
//  UserDefaultsHelper.m
//  QianShanJYDoctor
//
//  Created by iosdev on 2016/10/17.
//  Copyright © 2016年 QSYJ. All rights reserved.
//

#import "UserDefaultsHelper.h"

#define USER_DEFALTS [NSUserDefaults standardUserDefaults]

@implementation UserDefaultsHelper


//设置为默认值
+ (void)resetUserDefaults {
    [UserDefaultsHelper setLoginUserID:nil];
    [UserDefaultsHelper setInitInfoValues:nil];
}

+ (void)clearUserDefaults {
    [UserDefaultsHelper setLoginUserID:nil];
    [UserDefaultsHelper setInitInfoValues:nil];
}

//用户id数据
+ (void)setLoginUserID:(NSNumber *)strID {
    [USER_DEFALTS setObject:strID forKey:@"LoginUserID"];
}
+ (NSNumber *)getLoginUserID {
    return [USER_DEFALTS objectForKey:@"LoginUserID"];
}

//录入初始化信息
+ (void)setInitInfoValues:(NSDictionary *)values {
    [USER_DEFALTS setObject:values forKey:@"InitInfoValues"];
}
+ (NSDictionary *)getInitInfoValues {
    return [USER_DEFALTS objectForKey:@"InitInfoValues"];
}
@end
