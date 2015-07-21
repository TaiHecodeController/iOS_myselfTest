//
//  LoginViewController.m
//  EggerKer
//
//  Created by 李李贤军 on 15/7/21.
//  Copyright (c) 2015年 TH. All rights reserved.
//

#import "LoginViewController.h"
#import "TH_BusinessViewController.h"
#import "TH_PersonViewController.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.loginButton.layer.cornerRadius = 3;
    self.loginButton.layer.masksToBounds = YES;
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)loginButton:(id)sender {
    
    TH_PersonViewController * person = [[TH_PersonViewController alloc] init];
    [self.navigationController pushViewController:person animated:YES];
}
- (IBAction)unLogin:(id)sender {
    
    
    TH_BusinessViewController  * business = [[TH_BusinessViewController alloc] init];
    [self.navigationController pushViewController:business animated:YES];
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
