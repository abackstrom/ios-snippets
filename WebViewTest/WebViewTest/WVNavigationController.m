//
//  WVNavigationController.m
//  WebViewTest
//
//  Created by Annika Backstrom on 2014-08-23.
//  Copyright (c) 2014 Annika Backstrom. All rights reserved.
//

#import "WVNavigationController.h"
#import "WVViewController.h"

@implementation WVNavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];

    WVViewController *vc = [[WVViewController alloc] init];
    [self pushViewController:vc animated:YES];
}

@end
