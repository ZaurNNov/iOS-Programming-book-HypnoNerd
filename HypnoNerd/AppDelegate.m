//
//  AppDelegate.m
//  HypnoNerd
//
//  Created by Zaur Giyasov on 19/04/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "AppDelegate.h"
#import "HypnosisViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    HypnosisViewController *hvc = [[HypnosisViewController alloc]init];
    self.window.rootViewController = hvc;
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
