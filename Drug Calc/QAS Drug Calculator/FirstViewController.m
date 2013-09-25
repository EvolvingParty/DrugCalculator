//
//  FirstViewController.m
//  QAS Drug Calculator
//
//  Created by Kurt Lane on 25/08/13.
//  Copyright (c) 2013 kurtlane.com.au. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize solveButton, clearButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
            
    }
    return self;
}

-(void)flashit:(id)sender {
	UIButton *img = (UIButton*)sender;
	img.alpha = 0.5;
	[UIButton beginAnimations: @"FadeIn" context: nil];
	[UIButton setAnimationDelegate: self];
	[UIButton setAnimationDuration: 0.5];
	[UIButton setAnimationCurve: UIViewAnimationCurveEaseInOut];
	img.alpha = img.alpha + 1;
	[UIButton commitAnimations];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [textFieldmgmcg becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) mgmcg
{
    [self flashit:dosemgmcg];
        [self flashit:mgmcg];
    if ([mgmcgpicker.text isEqualToString:@"mg"]) {
        mgmcgpicker.text = @"mcg";
        [mgmcg setTitle:@"mcg" forState:UIControlStateNormal];
        dosepicker.text = @"mcg";
        [dosemgmcg setTitle:@"mcg" forState:UIControlStateNormal];
    }
    else{
        mgmcgpicker.text = @"mg";
        [mgmcg setTitle:@"mg" forState:UIControlStateNormal];
        dosepicker.text = @"mg";
        [dosemgmcg setTitle:@"mg" forState:UIControlStateNormal];
    }
}

- (IBAction) drugccalclear
{
    textFieldmgmcg.text = @"";
    textFieldmL.text = @"...";
    dose.text = @"...";
    administerlabel.text = @"";
    [textFieldmgmcg becomeFirstResponder];
    [self flashit:clearButton];
}

- (IBAction) solve
{

    [self flashit:solveButton];
        float concentration = ([textFieldmgmcg.text floatValue]);
        float drugin = ([textFieldmL.text floatValue]);
        float dosage = ([dose.text floatValue]);
    
    if ([textFieldmgmcg.text isEqual: @"..."] || [textFieldmgmcg.text isEqual: @""]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the concentration of the drug to be administered" delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    [textFieldmgmcg becomeFirstResponder];}
    else if ([textFieldmL.text isEqual: @"..."] || [textFieldmL.text isEqual: @""]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the volume of the drug to be administered" delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    [textFieldmL becomeFirstResponder];}
    else if ([dose.text isEqual: @"..."] || [dose.text isEqual: @""]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the dose of the drug to be administered" delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    [dose becomeFirstResponder];}
    else {
        CGSize screenSize = [[UIScreen mainScreen] bounds].size;
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
            if (screenSize.height > 480.0f) {
        float administer = dosage/(concentration/drugin);
                administerlabel.text = [[NSString alloc] initWithFormat:@"%.3f", administer]; }
            else {float administer = dosage/(concentration/drugin);
                administerlabel.text = [[NSString alloc] initWithFormat:@"%.3f", administer];
            [textFieldmgmcg resignFirstResponder];
            [textFieldmL resignFirstResponder];
            [dose resignFirstResponder];
            }}
}
}
    
@end
