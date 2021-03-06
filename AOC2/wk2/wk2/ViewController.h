//
//  ViewController.h
//  wk2
//
//  Created by Michael Kelsey on 9/7/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    float result;
    IBOutlet UITextField *calculatorScreen;
    int currentOperation;
    float currentNumber;
    IBOutlet UISwitch *switchToggle;
    IBOutlet UIView *disableInput;
    IBOutlet UISegmentedControl *backgroundControl;
    IBOutlet UIButton *infoButton;
}
-(IBAction)buttonNumberPressed:(id)sender;
-(IBAction)buttonOperationPressed:(id)sender;
-(IBAction)switchAction:(id)sender;
-(IBAction)backgroundChanged:(id)sender;
-(IBAction)infotButtonPressed:(id)sender;
-(IBAction)clearButtonPressed:(id)sender;


@end
