//
//  BasicMapAnnotation.h
//  baiduDemo
//
//  Created by apple on 13-9-30.
//  Copyright (c) 2013年 东和盛达. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <BaiduMapAPI/BMKAnnotation.h>
@interface BasicMapAnnotation : NSObject<BMKAnnotation>

@property (nonatomic) double latitude;
@property (nonatomic) double longitude;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString *address;
@property (nonatomic) int number;
@property (nonatomic,strong) NSString * title;

-(id)initMapAnnotation:(CLLocationDegrees)latitude
         andLongitude:(CLLocationDegrees)longitude
                 Address:(NSString *)address
                 Name:(NSString *)name
         andInfoNumber:(int)number;

-(void)setCoordinate:(CLLocationCoordinate2D)newCoordinate withNum:(int)num ;

//-(NSString *)title;

@end
