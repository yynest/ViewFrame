//
//  WeChatMainVC.m
//  YYWeChat
//
//  Created by iosdev on 2017/1/4.
//  Copyright © 2017年 opq. All rights reserved.
//

#import "WeChatMainVC.h"
#import "SGTopTitleView.h"

#import "InforVC.h"

@interface WeChatMainVC ()<SGTopTitleViewDelegate, UIScrollViewDelegate>
@property (nonatomic, strong) SGTopTitleView *topTitleView;
@property (nonatomic, strong) UIScrollView *mainScrollView;
@property (nonatomic, strong) NSArray *titles;

@end

@implementation WeChatMainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.titles = @[@"头条",@"要问", @"长沙", @"体育", @"财经", @"科技", @"房产", @"独家", @"直播"];
    self.topTitleView = [SGTopTitleView topTitleViewWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    _topTitleView.scrollTitleArr = [NSArray arrayWithArray:_titles];
    _topTitleView.titleAndIndicatorColor = [UIColor colorMain];
    _topTitleView.delegate_SG = self;
    [self.view addSubview:_topTitleView];
    
    
    // 创建底部滚动视图
    self.mainScrollView = [[UIScrollView alloc] init];
    _mainScrollView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    _mainScrollView.contentSize = CGSizeMake(self.view.frame.size.width * _titles.count, 0);
    _mainScrollView.backgroundColor = [UIColor clearColor];
    // 开启分页
    _mainScrollView.pagingEnabled = YES;
    // 没有弹簧效果
    _mainScrollView.bounces = NO;
    // 隐藏水平滚动条
    _mainScrollView.showsHorizontalScrollIndicator = NO;
    //
    [_mainScrollView setDelaysContentTouches:NO];
    [_mainScrollView setCanCancelContentTouches:YES];
    // 设置代理
    _mainScrollView.delegate = self;
    [self.view addSubview:_mainScrollView];
    
    // 1.添加所有子控制器
    [self setupChildViewController];
    
    [self.view insertSubview:_mainScrollView belowSubview:_topTitleView];
    
    [self showVc:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - - - SGTopScrollMenu代理方法
- (void)SGTopTitleView:(SGTopTitleView *)topTitleView didSelectTitleAtIndex:(NSInteger)index {
    
    // 1 计算滚动的位置
    CGFloat offsetX = index * self.view.frame.size.width;
    self.mainScrollView.contentOffset = CGPointMake(offsetX, 0);
    
    // 2.给对应位置添加对应子控制器
    [self showVc:index];
}

// 添加所有子控制器
- (void)setupChildViewController {
    //
    for (int i=0; i<self.titles.count; i++) {
        InforVC *inforVC = [[InforVC alloc] init];
        inforVC.title = self.titles[i];
        [self addChildViewController:inforVC];
    }
}

// 显示控制器的view
- (void)showVc:(NSInteger)index {
    
    CGFloat offsetX = index * self.view.frame.size.width;
    
    UIViewController *vc = self.childViewControllers[index];
    UIViewController *vcNext = nil;
    
    if (index + 1 != self.childViewControllers.count) {
        vcNext = self.childViewControllers[index + 1];
    }
    
    // 判断控制器的view有没有加载过,如果已经加载过,就不需要加载
    if (!vc.isViewLoaded){
        [self.mainScrollView addSubview:vc.view];
        vc.view.frame = CGRectMake(offsetX, 0, self.view.frame.size.width, MAIN_SCREEN_HEIGHT - 64);
    }
    
    if (!vcNext.isViewLoaded) {
        [self.mainScrollView addSubview:vcNext.view];
        vcNext.view.frame = CGRectMake(offsetX + self.view.frame.size.width, 0, self.view.frame.size.width,MAIN_SCREEN_HEIGHT - 64);
    }
}

#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    // 计算滚动到哪一页
    NSInteger index = scrollView.contentOffset.x / scrollView.frame.size.width;
    
    // 1.添加子控制器view
    [self showVc:index];
    
    // 2.把对应的标题选中
    UILabel *selLabel = self.topTitleView.allTitleLabel[index];
    
    [self.topTitleView scrollTitleLabelSelecteded:selLabel];
    // 3.让选中的标题居中
    [self.topTitleView scrollTitleLabelSelectededCenter:selLabel];
}



@end
