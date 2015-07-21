//
//  JobViewController.m
//  EggerKer
//
//  Created by mac on 15/7/21.
//  Copyright (c) 2015年 TH. All rights reserved.
//

#import "JobViewController.h"

@interface JobViewController ()
{
    //滑动小横线
    UIView * wire;
}

@end

@implementation JobViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self layOutUI];
    // Do any additional setup after loading the view from its nib.
}

-(void)layOutUI
{
    self.MyLike.layer.borderWidth = 0.8;
    self.MyLike.layer.borderColor = [UIColor lightGrayColor].CGColor;
    
    self.NewJob.layer.borderWidth = 0.8;
    self.NewJob.layer.borderColor = [UIColor lightGrayColor].CGColor;
    
    //滑动小横线
    wire = [[UIView alloc] initWithFrame:CGRectMake(0, self.MyLike.frame.origin.y + self.MyLike.frame.size.height - 1, self.MyLike.frame.size.width - 2, 2)];
    wire.backgroundColor = [UIColor colorWithRed:0 green:0.71 blue:0.63 alpha:1];
    [self.view addSubview:wire];
    
    //求职意向按钮
    self.addJobDirection.layer.cornerRadius = 2;
    self.addJobDirection.layer.masksToBounds = YES;
    
    self.JobScrollView.contentSize = CGSizeMake(640, self.JobScrollView.frame.size.height);
    
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

- (IBAction)likeClick:(UIButton *)sender {
    [UIView animateWithDuration:0.3 animations:^{
        wire.frame = CGRectMake(0, self.MyLike.frame.origin.y + self.MyLike.frame.size.height - 1, self.MyLike.frame.size.width - 2, 2);
        
    }];
    
    [self.JobScrollView scrollRectToVisible:self.JobScrollView.frame animated:YES];
}

- (IBAction)newJobClick:(UIButton *)sender {
    [UIView animateWithDuration:0.3 animations:^{
        wire.frame = CGRectMake(self.NewJob.frame.origin.x + 1, self.MyLike.frame.origin.y + self.MyLike.frame.size.height - 1, self.MyLike.frame.size.width - 2, 2);
        
    }];
    [self.JobScrollView scrollRectToVisible:CGRectMake(320, self.JobScrollView.frame.origin.y, 320, self.JobScrollView.frame.size.height) animated:YES];
    
}

- (IBAction)JobDiretionClick:(UIButton *)sender {
    
}
@end
