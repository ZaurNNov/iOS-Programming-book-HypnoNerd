//
//  HypnosisViewController.m
//  HypnoNerd
//
//  Created by Zaur Giyasov on 19/04/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@interface HypnosisViewController () <UITextFieldDelegate>

@end

@implementation HypnosisViewController

-(void)loadView {
    // Create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    HypnosisView *backgroundView = [[HypnosisView alloc]initWithFrame:frame];
    
    CGRect textFieldRect = CGRectMake(40, 90, 240, 30);
    UITextField *textField = [[UITextField alloc] initWithFrame:textFieldRect];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"This is textField plaseholder";
    textField.returnKeyType = UIReturnKeyDone;
    textField.keyboardType = UIKeyboardTypeDefault;
    textField.enablesReturnKeyAutomatically = YES;
    textField.delegate = self;
    [backgroundView addSubview:textField];
    
    
    self.view = backgroundView;
}

// TextField delegate methods
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
//    NSLog(@"(BOOL)textFieldShouldReturn:(UITextField *)textField");
//    NSLog(@"%@", textField.text);
    [self drawHypnoMess:textField.text];
    textField.text = @"";
    [textField resignFirstResponder];
    return YES;
}

-(void)drawHypnoMess: (NSString *)mess {
    for (int i = 0; i < 20; i++) {
        UILabel *messageLabel = [[UILabel alloc] init];
        // Config
        messageLabel.backgroundColor = [UIColor whiteColor];
        messageLabel.text = mess;
        
        //resize
        [messageLabel sizeToFit];
        //rand plase
        int width = (int)(self.view.bounds.size.width - messageLabel.bounds.size.width);
        int heght = (int)(self.view.bounds.size.height - messageLabel.bounds.size.height);
        int x = arc4random() % width;
        int y = arc4random() % heght;
        
        //upd frame
        CGRect frame = messageLabel.frame;
        frame.origin = CGPointMake(x, y);
        messageLabel.frame = frame;
        
        //add it
        [self.view addSubview:messageLabel];
        
        UIInterpolatingMotionEffect *motionEffect;
        motionEffect = [[UIInterpolatingMotionEffect alloc]initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
        motionEffect.minimumRelativeValue = @(-25);
        motionEffect.maximumRelativeValue = @(25);
        [messageLabel addMotionEffect:motionEffect];
        
        motionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
        motionEffect.maximumRelativeValue = @(-25);
        motionEffect.minimumRelativeValue = @(25);
        [messageLabel addMotionEffect:motionEffect];
    }
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
