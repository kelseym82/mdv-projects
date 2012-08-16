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

//APPEND FUCNTION
//Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
-(NSString *)append:(NSString *)firstString with:(NSString *)secondString
{
    NSMutableString *outputString = [NSMutableString stringWithString:firstString];
    NSString *string = [outputString stringByAppendingString:secondString];
    return string;
}

//DISPLAY ALERT FUNCTION
//Create a function called DisplayAlertWithString. This function will take as a parameter an NSString.
-(void)displayAlertWithString:(NSString *)string
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hey! Listen!" message:string delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
    [alert show];
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
