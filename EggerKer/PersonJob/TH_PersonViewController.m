//
//  TH_PersonViewController.m
//  EggerKer
//
//  Created by 李李贤军 on 15/7/21.
//  Copyright (c) 2015年 TH. All rights reserved.
//

#import "TH_PersonViewController.h"
#import "PushJobViewController.h"
#import "JobViewController.h"
#import "MyselfViewController.h"
@interface TH_PersonViewController ()

@end

@implementation TH_PersonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.tabBar.tintColor = [UIColor colorWithRed:235/255.0 green:67/255.0 blue:67/255.0 alpha:1];
    
    JobViewController *home = [[JobViewController alloc] init];
    [self addSubViewControl:home title:@"职位" image:@"tabbar_home" selectedImage:@"tabbar_home_highlighted"];
    
    PushJobViewController *message = [[PushJobViewController alloc] init];
    [self addSubViewControl:message title:@"地图" image:@"tabbar_course" selectedImage:@"tabbar_course_highlighted"];
    
    
    MyselfViewController *me = [[MyselfViewController alloc] init];
    [self addSubViewControl:me title:@"我" image:@"tabbar_profile" selectedImage:@"tabbar_profile_highligted"];
}

- (void)addSubViewControl:(UIViewController *)subVC title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    subVC.tabBarItem.title = title;
    subVC.tabBarItem.image = [UIImage imageNamed:image];
    subVC.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //    ZXCustomNavigation *nav = [[ZXCustomNavigation alloc] initWithRootViewController:subVC];
    [self addChildViewController:subVC];
    
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
