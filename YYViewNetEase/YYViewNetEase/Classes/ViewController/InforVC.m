//
//  InforVC.m
//  YYNetEase
//
//  Created by iosdev on 2017/1/4.
//  Copyright © 2017年 opq. All rights reserved.
//

#import "InforVC.h"
#import "DetailVC.h"

@interface InforVC ()

@end

@implementation InforVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navTitle = @"Info";
    
    
    CGRect rect = viewRect;
    rect.size.height -= 44;
    rect.origin.y = 44;
    baseTableView.frame = rect;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailVC *vc = [[DetailVC alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}

@end
