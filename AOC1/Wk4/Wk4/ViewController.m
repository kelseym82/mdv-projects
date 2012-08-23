//
//  ViewController.m
//  Wk4
//
//  Created by Michael Kelsey on 8/23/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //Create a UILabel near the top of your screen with teh text "Username:" in it.
    usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 20.0f, 100.0f, 20.0f)];
    if (usernameLabel != nil)
    {
        usernameLabel.text = @"Username:";
        usernameLabel.textAlignment = UITextAlignmentLeft;
        usernameLabel.textColor = [UIColor blackColor];
        usernameLabel.backgroundColor = [UIColor lightGrayColor];
    }
    [self.view addSubview:usernameLabel];
    //Create a UITextField to the right of the username label
    
    //Create a rounded rectangle UIButton of any color under the UITextField with the text "Login" on it.
    //Create another UILabel beneath with the default text "Please Enter Username".
    //Add a target to the UIButton to call a function called onClick when the user presses the Login button.
    //If the user has not entered any text into the UITextField, display in the UILabel, "Username cannot be empty". Otherwise, display "User: username has been logged in".
    //Hint: NSString has a property called length that tells you how many characters are in the string.

    
    //Create a UIButton using the rounded rectangle type. Give this button any color you wish.
    //Add the text "Show Date" to the button
    //Add an action to the button that when clicked, it will call the same onClick handler you already defined. Make sure to add a tag to the date button so you know which one was pressed.
    //Display a UIAlertView with the current date and time displayed in the format seen in the dateAlert graphic in the assets section of this project assignment. You can either format the date and time manually or use the date and time styles. You must use an NSDate object to gather the date and time information.

    //Create a UIButton using either the light or dark info type and position it somewhere near the bottom of the screen.
    //Create a UILabel beneath it that contains no initial text.
    //Hook up an action to the info button to have it call the onClick handler you created earlier.
    //When the button is pressed, have the text "This application was created by: Firstname Lastname" appear in the info UILabel. Please replace firstname lastname with your name.

    
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
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
