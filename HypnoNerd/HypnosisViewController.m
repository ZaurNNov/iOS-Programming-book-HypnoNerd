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
        
        // Challenge 6
        /*
        // Segment
        UISegmentedControl *segmentControl = [[UISegmentedControl alloc]
                           initWithItems:@[@"Green", @"Blue", @"Red"]];
        //position
        segmentControl.frame = CGRectMake(20, 30, 280, 30); // weigth = 320-(20+20)
        //action
        [segmentControl addTarget:self action:@selector(changeColor:) forControlEvents:UIControlEventValueChanged];
        //colors
        segmentControl.backgroundColor = [UIColor lightGrayColor];
        segmentControl.tintColor = [UIColor yellowColor];
        //adding
        [self.view addSubview: segmentControl];
         */
    }
    
    return self;
}

-(void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"HypnosisViewController: (void)viewDidLoad");
}

// Challenge 6
/*
-(void)changeColor :(id)sender {
    if ([sender isKindOfClass:UISegmentedControl.class]) {
        UISegmentedControl *sc = (UISegmentedControl *)sender;
        switch (sc.selectedSegmentIndex) {
            case 0:
//                ((HypnosisView *)self.view).circleColor = [UIColor greenColor];
                //key-Value method
                [((HypnosisView *)self.view) setValue:[UIColor greenColor] forKey:@"circleColor"];
                break;
            case 1:
                ((HypnosisView *)self.view).circleColor = [UIColor blueColor];
                break;
            case 2:
                ((HypnosisView *)self.view).circleColor = [UIColor redColor];
                break;
                
            default: ((HypnosisView *)self.view).circleColor = [UIColor grayColor];
                break;
        }
    }
}
 */



@end
