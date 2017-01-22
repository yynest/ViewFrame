//
//  MainTabBarVC.m
//  QianShanJYDoctor
//
//  Created by iosdev on 2016/10/17.
//  Copyright © 2016年 QSYJ. All rights reserved.
//

#import "MainTabBarVC.h"
#import "BaseHeader.h"
#import "CustomNavigationController.h"
#import "WeChatMainVC.h"
#import "ContactsMainVC.h"
#import "DiscoverMainVC.h"
#import "MeMainVC.h"

@interface MainTabBarVC ()

@end

@implementation MainTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *dicNor = @{NSForegroundColorAttributeName: [UIColor colorTextGrag],NSFontAttributeName: [UIFont fontWithName:@"Helvetica" size:12.0f]};
    NSDictionary *dicSel = @{NSForegroundColorAttributeName: [UIColor colorMain],NSFontAttributeName: [UIFont fontWithName:@"Helvetica" size:12.0f]};
    [[UITabBarItem appearance] setTitleTextAttributes:dicNor forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:dicSel forState:UIControlStateSelected];
    
    WeChatMainVC *riMainVC = [[WeChatMainVC alloc] init];
    riMainVC.navTitle = @"远程问诊";
    riMainVC.tabBarItem.title = @"远程问诊";
    riMainVC.tabBarItem.image = [UIImage imageNamed:@"mm_remote"];
    riMainVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"mm_remote_light"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *riNav = [[CustomNavigationController alloc] initWithRootViewController:riMainVC];
    
    ContactsMainVC *icMainVC = [[ContactsMainVC alloc] init];
    icMainVC.navTitle = @"图文咨询";
    icMainVC.tabBarItem.title = @"图文咨询";
    icMainVC.tabBarItem.image=[UIImage imageNamed:@"mm_im"];
    icMainVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"mm_im_light"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *icNav = [[CustomNavigationController alloc] initWithRootViewController:icMainVC];
    
    DiscoverMainVC *pmMainVC = [[DiscoverMainVC alloc] init];
    pmMainVC.navTitle = @"患者管理";
    pmMainVC.tabBarItem.title = @"患者管理";
    pmMainVC.tabBarItem.image=[UIImage imageNamed:@"mm_patient"];
    pmMainVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"mm_patient_light"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *pmNav = [[CustomNavigationController alloc] initWithRootViewController:pmMainVC];
    
    MeMainVC *ucMainVC = [[MeMainVC alloc] init];
    ucMainVC.navTitle = @"个人中心";
    ucMainVC.tabBarItem.title = @"个人中心";
    ucMainVC.tabBarItem.image=[UIImage imageNamed:@"mm_user"];
    ucMainVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"mm_user_light"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UINavigationController *uiNav = [[CustomNavigationController alloc] initWithRootViewController:ucMainVC];
//    uiNav.navigationBarHidden = YES;
    self.viewControllers = @[riNav,icNav,pmNav,uiNav];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
