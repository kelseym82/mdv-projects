//
//  ViewController.m
//  Wk3
//
//  Created by Michael Kelsey on 8/15/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//ADD FUNCTION
//Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
-(int)add:(int)firstNumber with:(int)secondNumber
{
    return firstNumber + secondNumber;
}

//BOOL FUNCTION
//Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
-(BOOL)compare:(int)firstNumber with:(int)secondNumber
{
    if (firstNumber == secondNumber)
    {
        return YES;
    }
    else
    {
        return NO;
    }
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
