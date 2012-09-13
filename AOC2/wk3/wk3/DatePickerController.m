//
//  ViewController+DatePickerController.m
//  wk3
//
//  Created by Michael Kelsey on 9/13/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "DatePickerController.h"

@interface DatePickerController ()

@end


@implementation DatePickerController


//A Save button appears at the top. When clicking on Save, the event description text and date/time information is collected and sent back to the primary view as the view is dismissed.
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button !=nil)
    {
        if (button.tag == 0)
        {
            [eventText resignFirstResponder];
        }
        else if (button.tag == 1)
        {
            NSString *tempString = eventText.text;
            eventDate.minimumDate = [NSDate date];
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
            [self dismissModalViewControllerAnimated:TRUE];
            event = [NSString stringWithFormat:@"%@ \n%@ \n \n", tempString, date];
            
            
            
            
        }
    }
}

//A Close Keyboard button is also on the view. When clicking on this button, the keyboard that is opened will be dismissed.



@end

