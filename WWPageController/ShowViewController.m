//
//  ShowViewController.m
//  WWPageController
//
//  Created by 石文文 on 16/2/5.
//  Copyright © 2016年 shiwenwen. All rights reserved.
//

#import "ShowViewController.h"
#import "UICommons.h"
@interface ShowViewController ()

@end

@implementation ShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(KScreenWidth / 2.0 -100, 100, 200, 100)];
    self.titleLabel.text = _pageTitle;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont boldSystemFontOfSize:30];
    [self.view addSubview:self.titleLabel];
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
