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


@end
