//
//  AppDelegate.m
//  HypnoNerd
//
//  Created by Zaur Giyasov on 19/04/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "AppDelegate.h"
#import "HypnosisViewController.h"
#import "ReminderViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    HypnosisViewController *hvc = [[HypnosisViewController alloc]init];
    
    // This will get pointer to an object that represents the app bundle
    NSBundle *appBundle = [NSBundle mainBundle];
    
    // Look in the appBundle for the file ReminderVC
    ReminderViewController *rvc = [[ReminderViewController alloc]initWithNibName:@"ReminderViewController"
                                                                          bundle:appBundle];
    
    UITabBarController *tabBarController = [[UITabBarController alloc]init];
    tabBarController.viewControllers = @[hvc, rvc];
    self.window.rootViewController = tabBarController;
    
    //self.window.rootViewController = rvc;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
