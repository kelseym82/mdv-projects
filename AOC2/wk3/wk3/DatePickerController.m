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

@synthesize event;

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
            eventDate.minimumDate = [NSDate date];
            NSString *tempString = eventText.text;
            NSDate *tempDate = [eventDate date];
            if (tempDate !=nil)
            {
                NSDateFormatter *formatDate = [[NSDateFormatter alloc] init];
                if (formatDate !=nil)
                {
                    [formatDate setDateFormat:@"MMMM dd, h:mm a"];
                }
                date = [formatDate stringFromDate:tempDate];
            }
            event = [NSString stringWithFormat:@"%@ \n%@ \n \n", tempString, date];
                
            [self dismissModalViewControllerAnimated:TRUE];
            
            
            
        }
    }
}





@end

