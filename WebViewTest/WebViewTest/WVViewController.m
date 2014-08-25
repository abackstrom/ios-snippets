//
//  WVViewController.m
//  WebViewTest
//
//  Created by Annika Backstrom on 2014-08-22.
//  Copyright (c) 2014 Annika Backstrom. All rights reserved.
//

#import "WVViewController.h"
#import "WVNavigationController.h"
#import "WVWebViewController.h"

@interface WVViewController ()

@property (nonatomic, strong) UIButton *mainButton;

@end

@implementation WVViewController

- (id)init
{
    self = [super init];
    if (self) {
        self.edgesForExtendedLayout = UIRectEdgeNone;

        self.title = @"Welcome";
        
        self.mainButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [self.mainButton setTitle:@"My Button" forState:UIControlStateNormal];
        self.mainButton.translatesAutoresizingMaskIntoConstraints = NO;

        [self.mainButton addTarget:self
                            action:@selector(showWebView)
                  forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)showWebView
{
    WVWebViewController *vc = [[WVWebViewController alloc] init];

    [(UINavigationController *)self.parentViewController pushViewController:vc animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.view addSubview:self.mainButton];

    [self.view setNeedsUpdateConstraints];
}

- (void)updateViewConstraints
{
    [super updateViewConstraints];
    
    NSDictionary *views = NSDictionaryOfVariableBindings(_mainButton);
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[_mainButton]-|"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:views]];

    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_mainButton(30)]"
                                                                      options:0
                                                                      metrics:nil
                                                                        views:views]];
}

@end
