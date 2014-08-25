//
//  WVAppDelegate.m
//  WebViewTest
//
//  Created by Annika Backstrom on 2014-08-22.
//  Copyright (c) 2014 Annika Backstrom. All rights reserved.
//

#import "WVAppDelegate.h"
#import "WVViewController.h"

@implementation WVAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    UINavigationController *controller = [[UINavigationController alloc] initWithRootViewController:[[WVViewController alloc] init]];
    self.window.rootViewController = controller;

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
