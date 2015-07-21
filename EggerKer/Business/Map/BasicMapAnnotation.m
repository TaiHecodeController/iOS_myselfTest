//
//  BasicMapAnnotation.m
//  baiduDemo
//
//  Created by apple on 13-9-30.
//  Copyright (c) 2013年 东和盛达. All rights reserved.
//

#import "BasicMapAnnotation.h"

@implementation BasicMapAnnotation

-(id)initMapAnnotation:(CLLocationDegrees)latitude
         andLongitude:(CLLocationDegrees)longitude
              Address:(NSString *)address
                 Name:(NSString *)name
        andInfoNumber:(int)number {
    if (self=[super init]) {
        self.latitude=latitude;
        self.longitude=longitude;
        self.number=number;
        self.address = address;
        self.name = name;
    }
    return self;
}
-(CLLocationCoordinate2D)coordinate{
    CLLocationCoordinate2D coordinate;
    coordinate.latitude = self.latitude;
    coordinate.longitude = self.longitude;
    return coordinate;
}

-(void)setCoordinate:(CLLocationCoordinate2D)newCoordinate withNum:(int)num {
    self.latitude = newCoordinate.latitude;
    self.longitude = newCoordinate.longitude;
    self.number=num;
}

//-(NSString *)title
//{
//    return self.title;
//}

@end
