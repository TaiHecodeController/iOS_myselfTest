//
//  AppDelegate.m
//  EggerKer
//
//  Created by 李李贤军 on 15/7/21.
//  Copyright (c) 2015年 TH. All rights reserved.
//

#import "AppDelegate.h"
#import "TH_MomeViewController.h"
#import "UIBarButtonItem+Extension.h"
#import "ZXCustomNavigation.h"
#import <BaiduMapAPI/BMKMapManager.h>
@interface AppDelegate ()
{
    BMKMapManager* _mapManager;
}

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor =[UIColor whiteColor];
    _mapManager = [[BMKMapManager alloc] init];
    BOOL ret = [_mapManager start:@"SmRY0on2op5Bdp7mqcrWbEE5" generalDelegate:nil];
    if(ret)
    {
        NSLog(@"配置成功");
        
    }
    TH_MomeViewController * home = [[TH_MomeViewController alloc] init];
    ZXCustomNavigation * nav = [[ZXCustomNavigation alloc] initWithRootViewController:home];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setBarTintColor:[UIColor colorWithRed:235/255.0 green:67/255.0 blue:67/255.0 alpha:1]];
    bar.translucent = NO;
    [bar setTintColor:[UIColor whiteColor]];
    sleep(1);    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
