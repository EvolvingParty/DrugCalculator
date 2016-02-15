//
//  FirstViewController.h
//  QAS Drug Calculator
//
//  Created by Kurt Lane on 25/08/13.
//  Copyright (c) 2013 kurtlane.com.au. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface FirstViewController : UIViewController {
    IBOutlet UITextField *textFieldmgmcg;
    IBOutlet UILabel *mgmcgpicker;
    IBOutlet UIButton *mgmcg;
    IBOutlet UITextField *textFieldmL;
    IBOutlet UITextField *dose;
    IBOutlet UILabel *dosepicker;
    IBOutlet UIButton *dosemgmcg;
    IBOutlet UILabel *administerlabel;
    
    IBOutlet UIButton *clearButton;
    IBOutlet UIButton *solveButton;

}

@property (nonatomic, strong) UIButton *clearButton;
@property (nonatomic, strong) UIButton *solveButton;

- (IBAction) mgmcg;
- (IBAction) drugccalclear;
- (IBAction) solve;

@end
