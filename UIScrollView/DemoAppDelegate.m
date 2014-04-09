//
//  DemoAppDelegate.m
//  ScrollView
//
//  Created by Annika Backstrom on 2014-04-09.
//  Public Domain
//

#import "DemoAppDelegate.h"

@implementation DemoAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // applicationFrame rather than bounds, so we don't go behind the status bar
    CGRect frame = [[UIScreen mainScreen] applicationFrame];
    self.window = [[UIWindow alloc] initWithFrame:frame];

    // Light status bar text. Requires "View controller-based status bar appearance" == NO
    // in your application's Info.plist file.
    application.statusBarStyle = UIStatusBarStyleLightContent;

    // Create a scroll view the same size as the parent window
    UIScrollView *view = [[UIScrollView alloc] initWithFrame:self.window.bounds];

    // Create an image view from the image resource named "totoro.jpg"
    UIImage *image = [UIImage imageNamed:@"totoro.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];

    // Set the UIScrollView's internal size
    view.contentSize = imageView.bounds.size;

    // This color will be visible when you drag past the content edge
    view.backgroundColor = [UIColor darkGrayColor];

    [view addSubview:imageView];
    [self.window addSubview:view];

    [self.window makeKeyAndVisible];
    return YES;
}

@end
