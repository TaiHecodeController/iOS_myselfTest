//
//  JobListView.m
//  EggerKer
//
//  Created by mac on 15/7/21.
//  Copyright (c) 2015年 TH. All rights reserved.
//

#import "JobListView.h"
#import "JobListCell.h"

@interface JobListView() {
    
    UITableView * _tableView;
    
}

@end

@implementation JobListView



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.frame = frame;
        
        [self createUI];
    }
    return self;
}

-(void)createUI
{
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.height, self.frame.size.width)];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self addSubview:_tableView];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 66;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    JobListCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ID"];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"JobListCell" owner:self options:nil][0];
    }
    return cell;
}

@end
