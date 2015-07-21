//
//  MapViewController.m
//  EggerKer
//
//  Created by 李李贤军 on 15/7/21.
//  Copyright (c) 2015年 TH. All rights reserved.
//

#import "MapViewController.h"
#import <BaiduMapAPI/BMapKit.h>
#import "BasicMapAnnotation.h"

@interface MapViewController ()<BMKMapViewDelegate,BMKLocationServiceDelegate>
{
    BMKMapView * _mapView;
    BMKUserLocation * myLocation;
    BMKLocationService * _locService;
}

@end

@implementation MapViewController

-(void)viewWillAppear:(BOOL)animated
{
    [_mapView viewWillAppear];
    _mapView.delegate = self; // 此处记得不用的时候需要置nil，否则影响内存的释放
}
-(void)viewWillDisappear:(BOOL)animated
{
    [_mapView viewWillDisappear];
    _mapView.delegate = nil; // 不用时，置nil
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _mapView = [[BMKMapView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    _mapView.userTrackingMode = BMKUserTrackingModeNone;
    
    [_mapView setZoomLevel:11];
    
    [BMKLocationService setLocationDistanceFilter:100.f];
    
    //初始化BMKLocationService
    _locService = [[BMKLocationService alloc]init];
    _locService.delegate = self;
    //启动LocationService
    [_locService startUserLocationService];
//    [self.view addSubview:_mapView];
    
    // Do any additional setup after loading the view.
}

- (void)didUpdateUserHeading:(BMKUserLocation *)userLocation
{
    NSLog(@"heading is %@",userLocation.heading);
}
//处理位置坐标更新
- (void)didUpdateBMKUserLocation:(BMKUserLocation *)userLocation
{
    _mapView.tag = 100000;
    NSLog(@"didUpdateUserLocation lat %f,long %f",userLocation.location.coordinate.latitude,userLocation.location.coordinate.longitude);
    
    [_mapView updateLocationData:userLocation];
    [_mapView setCenterCoordinate:userLocation.location.coordinate animated:YES];
    if([self.view viewWithTag:100000])
    {
        
    }else
    {
        [self.view addSubview:_mapView];
    }
    myLocation = userLocation;
    BasicMapAnnotation *annotiation = [[BasicMapAnnotation alloc] initMapAnnotation:userLocation.location.coordinate.latitude andLongitude:userLocation.location.coordinate.longitude Address:@"数码大厦a座" Name:@"我的位置" andInfoNumber:1];
    annotiation.title = @"我的位置";
    [_mapView addAnnotation:annotiation];
    
}

-(BMKAnnotationView *)mapView:(BMKMapView *)mapView viewForAnnotation:(id<BMKAnnotation>)annotation{
    static NSString *indentifier=@"basicMapAnnotation";
    if ([annotation isKindOfClass:[BasicMapAnnotation class]]) {
        BMKAnnotationView *annView=[mapView dequeueReusableAnnotationViewWithIdentifier:indentifier];
        if (!annView) {
            annView=[[BMKAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:indentifier];
            
        }
        
        annView.canShowCallout = YES;//在点击大头针的时候会弹出那个黑框框
        
        annView.draggable = NO;//这里决定annView能不能拖动，应该经常会把它设为NO
        
        annView.image = [UIImage imageNamed:@"location_marker"];
        
        //        for (UIView *view in [annView subviews]) {
        //            [view removeFromSuperview];
        //        }
        
        return annView;
    }
    return nil;
    
}

-(void)mapView:(BMKMapView *)mapView didSelectAnnotationView:(BMKAnnotationView *)view{
    BasicMapAnnotation *basicAnnotation=(BasicMapAnnotation *)view.annotation;
    NSString *strContent = [NSString stringWithFormat:@"查看%@具体放映的影片", basicAnnotation.name];
    [_mapView setZoomLevel:18];
    
//    for(int i = 1;i < 5;i++)
//    {
//        BasicMapAnnotation *annotiation = [[BasicMapAnnotation alloc] initMapAnnotation:myLocation.location.coordinate.latitude + 0.0001 * i  andLongitude:myLocation.location.coordinate.longitude Address:@"数码大厦a座" Name:@"我的位置" andInfoNumber:1];
//        [_mapView addAnnotation:annotiation];
//    }
    
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
