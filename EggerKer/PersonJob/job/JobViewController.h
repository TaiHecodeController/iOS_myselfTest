//
//  JobViewController.h
//  EggerKer
//
//  Created by mac on 15/7/21.
//  Copyright (c) 2015年 TH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JobViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *MyLike;
@property (weak, nonatomic) IBOutlet UIButton *addJobDirection;
@property (weak, nonatomic) IBOutlet UIButton *NewJob;
@property (weak, nonatomic) IBOutlet UIScrollView *JobScrollView;

- (IBAction)likeClick:(UIButton *)sender;
- (IBAction)newJobClick:(UIButton *)sender;
- (IBAction)JobDiretionClick:(UIButton *)sender;

@end
