//
//  ViewController.m
//  Wk4
//
//  Created by Michael Kelsey on 8/23/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "ViewController.h"

#define LOGIN_BTN 0
#define DATE_BTN 1
#define INFO_BTN 2


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //Create a UILabel near the top of your screen with teh text "Username:" in it.
    usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 20.0f, 100.0f, 35.0f)];
    if (usernameLabel != nil)
    {
        usernameLabel.text = @"Username:";
        usernameLabel.textAlignment = UITextAlignmentLeft;
        usernameLabel.textColor = [UIColor blackColor];
        usernameLabel.backgroundColor = [UIColor lightGrayColor];
    }
    [self.view addSubview:usernameLabel];
    
    //Create a UITextField to the right of the username label
    usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(105.0f, 20.0f, 210.0f, 30.0f)];
    if (usernameTextField != nil)
    {
        usernameTextField.borderStyle = UITextBorderStyleRoundedRect;

    }
    [self.view addSubview:usernameTextField];
    
    //Create a rounded rectangle UIButton of any color under the UITextField with the text "Login" on it.
    loginBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginBtn != nil)
    {
        [loginBtn setTitle:@"Login" forState:UIControlStateNormal];
        //[loginBtn setTintColor:[UIColor darkGrayColor]];<<<This does not work, in order to change the color you must make a custome button.  
        loginBtn.frame = CGRectMake(5.0f, 60.0f, 310.0f, 50.0f);
        loginBtn.tag = LOGIN_BTN;
        [loginBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        
    }
    [self.view addSubview:loginBtn];
    
    //Create another UILabel beneath with the default text "Please Enter Username".
    textLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 125.0f, 310.0f, 75.0f)];
    if (textLabel !=nil)
    {
        textLabel.text = @"Please Enter Username";
        textLabel.backgroundColor = [UIColor darkGrayColor];
        textLabel.textColor = [UIColor redColor];
        textLabel.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:textLabel];
    
    //Create a UIButton using the rounded rectangle type. Give this button any color you wish.
    //Add the text "Show Date" to the button
    dateBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateBtn !=nil)
    {
        dateBtn.tag = DATE_BTN;
        dateBtn.frame = CGRectMake(5.0f, 225.0f, 310.0f, 50.0f);
        [dateBtn setTitle:@"Show Date" forState:UIControlStateNormal];
        [dateBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];

    }
    [self.view addSubview:dateBtn];
    
    //Create a UIButton using either the light or dark info type and position it somewhere near the bottom of the screen.

    infoBtn = [UIButton buttonWithType:UIButtonTypeInfoDark];
    if (infoBtn !=nil)
    {
        infoBtn.tag = INFO_BTN;
        infoBtn.frame = CGRectMake(5.0f, 365.0f, 25.0f, 25.0f);
        [infoBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    [self.view addSubview:infoBtn];
    
    //Create a UILabel beneath it that contains no initial text.
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 400.0f, 310.0f, 65.0f)];
    if (infoLabel !=nil)
    {
        infoLabel.text = @"";
        infoLabel.textAlignment = UITextAlignmentCenter;
        infoLabel.textColor = [UIColor blueColor];
        infoLabel.backgroundColor = [UIColor lightGrayColor];
        infoLabel.numberOfLines = 2;
    }
        
    [self.view addSubview:infoLabel];

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

    //Add a target to the UIButton to call a function called onClick when the user presses the Login button.
    //If the user has not entered any text into the UITextField, display in the UILabel, "Username cannot be empty". Otherwise, display "User: username has been logged in".
    //Hint: NSString has a property called length that tells you how many characters are in the string.

- (void)onClick:(UIButton*)btn
{
    if (btn.tag == LOGIN_BTN && usernameTextField.text == 0)
    {
        textLabel.text = @"Username cannot be empty.";
        textLabel.backgroundColor = [UIColor redColor];
        textLabel.textColor = [UIColor whiteColor];
    }
    else if (btn.tag == LOGIN_BTN)
    {
        NSString *username = [[NSString alloc]initWithString:usernameTextField.text];
        textLabel.text = [NSString stringWithFormat:@"User: %@ has been logged in", username];
        textLabel.backgroundColor = [UIColor darkGrayColor];
        textLabel.textColor = [UIColor whiteColor];
    }

    //Add an action to the button that when clicked, it will call the same onClick handler you already defined. Make sure to add a tag to the date button so you know which one was pressed.

    else if (btn.tag == DATE_BTN)
    {
        //Display a UIAlertView with the current date and time displayed in the format seen in the dateAlert graphic in the assets section of this project assignment. You can either format the date and time manually or use the date and time styles. You must use an NSDate object to gather the date and time information.
        NSDate *date = [NSDate date];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
        if (dateFormatter !=nil)
        {
            [dateFormatter setDateFormat:@"MMMM dd, yyyy hh:mm aa"];
            NSString* dateLabel = [dateFormatter stringFromDate:date];
            UIAlertView *dateAlert = [[UIAlertView alloc]initWithTitle:@"Date" message:dateLabel delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            if (dateAlert !=nil)
            {
                [dateAlert show];
            }
        }
    }
    //Hook up an action to the info button to have it call the onClick handler you created earlier.
    //When the button is pressed, have the text "This application was created by: Firstname Lastname" appear in the info UILabel. Please replace firstname lastname with your name.
    else if (btn.tag == INFO_BTN)
    {
        infoLabel.text = @"This application was written with love by Michael Kelsey";
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
