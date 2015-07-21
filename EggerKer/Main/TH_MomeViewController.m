//
//  TH_MomeViewController.m
//  EggerKer
//
//  Created by 李李贤军 on 15/7/20.
//  Copyright (c) 2015年 TH. All rights reserved.
//

#import "TH_MomeViewController.h"
#import "LoginViewController.h"
@interface TH_MomeViewController ()

@end

@implementation TH_MomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   self.searchjob.layer.cornerRadius = 3;
//    self.searchjob.layer.borderWidth = 5;
    self.searchjob.layer.masksToBounds = YES;
    self.recruitment.layer.cornerRadius = 3;
    self.recruitment.layer.masksToBounds = YES;
    
//   self.title = @"EggerKer";
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)personJobClick:(id)sender {
    
    LoginViewController * business = [[LoginViewController alloc] init];
    
    [self.navigationController pushViewController:business animated:YES];

    
}
- (IBAction)Bussiness:(id)sender {
    
    LoginViewController * person = [[LoginViewController alloc] init];
    
    [self.navigationController pushViewController:person animated:YES];
    

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
