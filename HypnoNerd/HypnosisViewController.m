//
//  HypnosisViewController.m
//  HypnoNerd
//
//  Created by Zaur Giyasov on 19/04/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

-(void)loadView {
    // Create a view
    HypnosisView *backgroundView = [[HypnosisView alloc]init];
    self.view = backgroundView;
}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Get the tab bar item
        self.tabBarItem.title = @"Hypnotize";
        UIImage *image = [UIImage imageNamed:@"Hypno.png"];
        self.tabBarItem.image = image;
    }
    
    return self;
}

-(void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"HypnosisViewController: (void)viewDidLoad");
}

@end
