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

-(IBAction)buttonNumberPressed:(id)sender
{
    NSLog(@"%.01f", currentNumber);
    currentNumber = (float)[sender tag];
    calculatorScreen.text = [NSString stringWithFormat:@"%.01f", currentNumber];
}
-(IBAction)buttonOperationPressed:(id)sender
{
    if (currentOperation == 0) result = currentNumber;
    else
    {
        switch (currentOperation) {
            case 1:
                result = result + currentNumber;
                break;
            case 2:
                currentOperation = 0;
                break;
        }
        
    }
    currentNumber = 0;
    calculatorScreen.text = [NSString stringWithFormat:@"%.01f", result];
    if ([sender tag]==0) result = 0;
    currentOperation = [sender tag];
    
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
