//
//  WVWebViewController.m
//  WebViewTest
//
//  Created by Annika Backstrom on 2014-08-22.
//  Copyright (c) 2014 Annika Backstrom. All rights reserved.
//

#import "WVWebViewController.h"

@interface WVWebViewController ()

@property (nonatomic, strong) UIWebView *view;

@end

@implementation WVWebViewController

- (id)init
{
    self = [super init];
    if (self) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.title = @"omg";

        UIBarButtonItem *stopButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop
                                                                                    target:self
                                                                                    action:@selector(closeView)];
        self.navigationItem.leftBarButtonItem = stopButton;
    }
    return self;
}

- (void)loadView
{
    self.view = [[UIWebView alloc] init];
}

- (void)closeView
{
    [(UINavigationController *)self.parentViewController popViewControllerAnimated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    NSURL *url = [NSURL URLWithString:@"http://omg.stop.wtf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];

    [self.view loadRequest:request];
}

@end
