//
//  YIViewController.m
//  YYFH
//
//  Created by gzfw on 2017/10/10.
//  Copyright © 2017年 gzfw. All rights reserved.
//

#import "YIViewController.h"
#import <Lottie/Lottie.h>
@interface YIViewController ()

@end

@implementation YIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    LOTAnimationView *animation = [LOTAnimationView animationNamed:@"data"];
    animation.frame = CGRectMake(0, 0, 300, 300);
    animation.loopAnimation =  YES;
    animation.animationSpeed = 10;
    animation.animationProgress = 10;
    [self.view addSubview:animation];
    [animation playWithCompletion:^(BOOL animationFinished) {
        DTLog(@"动画执行完了");
    }];
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
