    //
    //  ReminderViewController.m
    //  HypnoNerd
    //
    //  Created by Zaur Giyasov on 19/04/2018.
    //  Copyright © 2018 Zaur Giyasov. All rights reserved.
    //

#import "ReminderViewController.h"
    //#import <NotificationCenter/NotificationCenter.h>

@interface ReminderViewController()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;
@property (nonatomic, weak) IBOutlet UIButton *button;


@end

@implementation ReminderViewController

-(IBAction)addRemember: (id)sender {
NSDate *date = self.datePicker.date;
NSLog(@"Setting a reminder for $@", date.description);

UILocalNotification *note = [[UILocalNotification alloc] init];
note.alertBody = @"Hypnotize me!";
note.fireDate = date;

[[UIApplication sharedApplication] scheduleLocalNotification:note];

}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
            // Get the tab bar item
        UITabBarItem *tbi = self.tabBarItem;
        tbi.title = @"Reminder";
        UIImage *image = [UIImage imageNamed:@"Time.png"];
        tbi.image = image;
    }
    
    return self;
}


-(void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"ReminderViewController: (void)viewDidLoad");
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"ReminderViewController: (void)viewWillAppear:(BOOL)animated");
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}

@end

