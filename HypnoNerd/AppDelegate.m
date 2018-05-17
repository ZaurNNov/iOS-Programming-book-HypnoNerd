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
#import "QuizViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

-(UIViewController *)application:(UIApplication *)application viewControllerWithRestorationIdentifierPath:(NSArray *)identifierComponents coder:(NSCoder *)coder {
        // Create new NC
    UIViewController *vc = [[UINavigationController alloc] init];
    
        // the last object in the path array is the restoration id for this view controller
    vc.restorationIdentifier = [identifierComponents lastObject];
    
        // If there is only 1 id, then this is the root vc
    if ([identifierComponents count] == 1) {
        self.window.rootViewController = vc;
    }
    
    return vc;
}

-(BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    return YES;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    if (!self.window.rootViewController) {
        HypnosisViewController *hvc = [[HypnosisViewController alloc]init];
        ReminderViewController *rvc = [[ReminderViewController alloc]init];
        QuizViewController *qvz = [[QuizViewController alloc] init];
        UITabBarController *tabBarController = [[UITabBarController alloc]init];
        tabBarController.viewControllers = @[hvc, rvc, qvz];
        
        self.window.rootViewController = tabBarController;
    }
    
    //self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

-(BOOL)application:(UIApplication *)application shouldSaveApplicationState:(NSCoder *)coder {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return YES;
}

-(BOOL)application:(UIApplication *)application shouldRestoreApplicationState:(NSCoder *)coder {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    return YES;
}

@end
