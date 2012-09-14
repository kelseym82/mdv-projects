//
//  ViewController+DatePickerController.m
//  wk3
//
//  Created by Michael Kelsey on 9/13/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "DatePickerController.h"
#import "ViewController.h"

@interface DatePickerController ()

@end


@implementation DatePickerController

@synthesize delegate, eventDate;


//Added from Week 2 Video on delegates
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        delegate = nil;
    }
    return self;
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    eventDate.minimumDate = [NSDate date];
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button !=nil)
    {
        //A Close Keyboard button is also on the view. When clicking on this button, the keyboard that is opened will be dismissed.
        if (button.tag == 0)
        {
            [eventText resignFirstResponder];
        }
        //A Save button appears at the top. When clicking on Save, the event description text and date/time information is collected and sent back to the primary view as the view is dismissed.
        else if (button.tag == 1)
        {
            //Added this Alert because it makes sense to not have a blank event.
            if ([eventText.text length] == 0)
            {
                UIAlertView *alert = [[UIAlertView alloc]
                                      initWithTitle:@"ERROR"
                                      message:@"Event Cannot be blank"
                                      delegate:self
                                      cancelButtonTitle:@"Okay"
                                      otherButtonTitles:nil, nil];
                [alert show];
                [alert release];
            }
            else
            {
            NSDate *tempDate = [eventDate date];
            if (tempDate !=nil)
            {
                //Formats the date to resemble the example on FSO
                NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];
                if (formatDate !=nil)
                {
                   [formatDate setDateFormat:@"MMMM dd, h:mm:ss a"];
                }
                date = [formatDate stringFromDate:tempDate];
              
            }
            event = [NSString stringWithFormat:@"New Event: %@ \n%@ \n \n", eventText.text, date];
           
                
            
            if (delegate != nil)
            {
                [delegate loadEventToScreen:event];
            }
            //Sends you back to main screen
            [self dismissModalViewControllerAnimated:TRUE];
            }
            
            
        }
    }
}





@end

