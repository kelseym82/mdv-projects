//
//  ViewController.m
//  wk2
//
//  Created by Michael Kelsey on 9/7/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



///CALCULATOR/////////

-(IBAction)buttonNumberPressed:(id)sender
{
    //The below pulls the current number from the tag on the button.  The math is needed to string the numbers together. For example, if I press the number 1 button, the tag = 1.  The current number default is 0, so you get 0*10 + 1 = 1, not if i press 1 again, the current number is now 1, so the math looks like this: 1*10 + 1 = 11.  Basically by multiplying the current number by 10 you move it over a dicimal place.
    currentNumber = currentNumber*10 + (float)[sender tag];
    calculatorScreen.text = [NSString stringWithFormat:@"%g", currentNumber];
}
-(IBAction)buttonOperationPressed:(id)sender
{
    if (currentOperation == 0)
    {
        result = currentNumber;
    }
    else
    {
        switch (currentOperation) {
            case 1:
                result = result + currentNumber;
                break;
        }
        
    }
    //resets the current number
    currentNumber = 0;
    //sends the result to the screen
    calculatorScreen.text = [NSString stringWithFormat:@"%g", result];
    if ([sender tag]==0) result = 0;
    currentOperation = [sender tag];
    
}
//SWITCHY THINGY//////////


-(IBAction)switchAction:(id)sender
{
    if(self->switchToggle.on)
    {
        self->disableInput.hidden = YES;
        calculatorScreen.text = @"0";
        currentNumber = 0;
    }
    else
    {
        self->disableInput.hidden = NO;
    }
}


- (void)viewDidLoad
{
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
