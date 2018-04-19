//
//  ReminderViewController.m
//  HypnoNerd
//
//  Created by Zaur Giyasov on 19/04/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "ReminderViewController.h"

@interface ReminderViewController()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end

@implementation ReminderViewController

-(IBAction)addRemember: (id)sender {
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for $@", date.description);
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

@end
