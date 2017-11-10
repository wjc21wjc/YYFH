//
//  YYFHTabBarController.m
//  YYFH
//
//  Created by gzfw on 2017/10/10.
//  Copyright © 2017年 gzfw. All rights reserved.
//

#import "YYFHTabBarController.h"
#import "YIViewController.h"
#import "YEViewController.h"
#import "FANGViewController.h"
#import "HUAViewController.h"
#import "YYFHNavigationController.h"
@interface YYFHTabBarController ()

@end

@implementation YYFHTabBarController

+(void)initialize{
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:11];
    normalAttrs[NSForegroundColorAttributeName] = WMLabelColorGray;
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = normalAttrs[NSFontAttributeName];
    selectedAttrs[NSForegroundColorAttributeName] = GZSegmentColor;
    
    UITabBarItem *appearance = [UITabBarItem appearance];
    [appearance setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    [appearance setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    
    
    [[UITabBar appearance]setBarTintColor:WMLabelColorWhite];
    [UITabBar appearance].translucent = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupChildViewController:[[YIViewController alloc] init]
                             title:@"一"
                             image:@"icon_company_nol"
                     selectedImage:@"icon_company_sel"];
    [self setupChildViewController:[[YEViewController alloc] init]
                             title:@"叶"
                             image:@"icon_job_nol"
                     selectedImage:@"icon_job_sel"];
    [self setupChildViewController:[[FANGViewController alloc] init]
                             title:@"芳"
                             image:@"icon_school"
                     selectedImage:@"icon_school_sel"];
    [self setupChildViewController:[[HUAViewController alloc] init]
                             title:@"华"
                             image:@"icon_me"
                     selectedImage:@"icon_me_sel"];
    
}
- (void)setupChildViewController:(UIViewController *)childController
                           title:(NSString *)title
                           image:(NSString *)image
                   selectedImage:(NSString *)selectedImage {
    childController.title = title;
    UIImage *normalImage = [[UIImage imageNamed:image]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selectImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [childController.tabBarItem setImage:normalImage];
    childController.tabBarItem.selectedImage = selectImage;
    YYFHNavigationController *navCon = [[YYFHNavigationController alloc] initWithRootViewController:childController];
    navCon.title = title;
    [self addChildViewController:navCon];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
