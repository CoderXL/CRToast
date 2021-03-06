//
//  AppDelegate.m
//  CRNotificationDemo
//
//

#import "AppDelegate.h"
#import "MainViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [CRToastManager setDefaultOptions:@{kCRToastNotificationTypeKey : @(CRToastTypeNavigationBar),
                                                        kCRToastFontKey             : [UIFont fontWithName:@"HelveticaNeue-Light" size:16],
                                                        kCRToastTextColorKey        : [UIColor whiteColor],
                                                        kCRToastBackgroundColorKey  : [UIColor orangeColor]}];
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    MainViewController *mainViewController = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil];
    UINavigationController *navigationController = [UINavigationController new];
    self.window.rootViewController = navigationController;
    [navigationController pushViewController:mainViewController animated:NO];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
