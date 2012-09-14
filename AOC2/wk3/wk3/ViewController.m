//
//  ViewController.m
//  wk3
//
//  Created by Michael Kelsey on 9/13/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "ViewController.h"
#import "DatePickerController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)onClick:(id)sender
{
    //Week 2 Video Example
    UIButton *button = (UIButton*)sender;
    if (button !=nil)
    {
        if (button.tag == 0)
        {
            DatePickerController *events = [[DatePickerController alloc]initWithNibName:@"DatePickerController" bundle:nil];
            if (events !=nil)
            {
                events.delegate = self;
                [self presentModalViewController:events animated:TRUE];
            }
            
            
        }
    }
}


//Adds the event to the main screen.
-(void)loadEventToScreen:(NSString *)eventString
{
    eventView.text = [eventView.text stringByAppendingString:eventString];
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
