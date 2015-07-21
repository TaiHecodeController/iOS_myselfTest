//
//  AppDelegate.m
//  EggerKer
//
//  Created by 李李贤军 on 15/7/20.
//  Copyright (c) 2015年 TH. All rights reserved.
//

#import "AppDelegate.h"
#import "TH_MomeViewController.h"
#import "ZXCustomNavigation.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor =[UIColor whiteColor];
    // 设定位置和大小
    CGRect frame = CGRectMake(0,0,[[UIScreen mainScreen]bounds].size.width, [[UIScreen mainScreen]bounds].size.height);
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = [UIColor whiteColor];
    
    [self.window addSubview:view];
    frame.size = [UIImage imageNamed:@"蛋壳.gif"].size;
    // 读取gif图片数据
    NSData *gif = [NSData dataWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"蛋壳" ofType:@"gif"]];
    // view生成
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 50, 320, 360)];
    CGPoint point = view.center;
    webView.center = point;
    
    webView.userInteractionEnabled = NO;//用户不可交互
    [webView loadData:gif MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
    
    [view addSubview:webView];
    TH_MomeViewController * home = [[TH_MomeViewController alloc] init];
    ZXCustomNavigation * nav = [[ZXCustomNavigation alloc] initWithRootViewController:home];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    UINavigationBar *bar = [UINavigationBar appearance];
   [bar setBarTintColor:[UIColor colorWithRed:235/255.0 green:67/255.0 blue:67/255/0 alpha:1]];
    bar.translucent = NO;
    [bar setTintColor:[UIColor whiteColor]];
    sleep(1);
    // Override point for customization after application launch.
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
