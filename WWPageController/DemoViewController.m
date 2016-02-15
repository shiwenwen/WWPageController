//
//  DemoViewController.m
//  WWPageController
//
//  Created by 石文文 on 16/2/4.
//  Copyright © 2016年 shiwenwen. All rights reserved.
//

#import "DemoViewController.h"
#import "ShowViewController.h"
@interface DemoViewController ()<WWPageControllerDataSource,WWPageControllerDelegate>{
    
    NSArray *data;
}

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    data = [UIFont familyNames];
    self.dataSource = self;
    self.delegate = self;
    self.titleTabColor = [UIColor colorWithRed:0.000 green:0.532 blue:1.000 alpha:1.000];
    
}
- (UIStatusBarStyle)preferredStatusBarStyle{
    
    return UIStatusBarStyleLightContent;
}
-(NSInteger )numberOfPages{
    
    return data.count;
}
- (NSString *)pageTitle:(NSInteger)page{
    
    
    return data[page];
    
    
}
- (UIViewController *)controllerOfPage:(NSInteger)page{
    
    ShowViewController *show = [[ShowViewController alloc]init];
    show.pageTitle = [NSString stringWithFormat:@"第%ld页",page];
    return show;
    
    
    
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
