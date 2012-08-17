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
    //Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    NSString *appendStrings = [self append:@"I love " with:@"zombie movies!"];
    [self displayAlertWithString:appendStrings];
    
    //Call the Add function passing in two integer values. Capture the return of this function into a variable.
    int add = [self add:20 with:22];
    
    //Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
    NSNumber *addedNumbers = [[NSNumber alloc]initWithInt:add];
    
    //Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
    NSString *addedNumbersText = [NSString stringWithFormat:@"The meaning of life is "];
    NSString *convertedNumberToString = [addedNumbers stringValue];
    NSString *finalString = [self append:addedNumbersText with:convertedNumberToString];
    [self displayAlertWithString:finalString];
    
    //Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
    int firstInt = 21;
    int secondInt = 21;
    BOOL compareInt = [self compare:firstInt with:secondInt];
    NSString *compareAlert = [NSString stringWithFormat:@"The two numbers are %d and %d; Are they equal? %@", firstInt, secondInt, compareInt?@"YES":@"NO"];
    [self displayAlertWithString:compareAlert];
    
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
