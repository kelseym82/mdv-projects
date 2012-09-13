//
//  ViewController+DatePickerController.h
//  wk3
//
//  Created by Michael Kelsey on 9/13/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "UIKit/UIKit.h"


@interface DatePickerController : UIViewController
{
    IBOutlet UITextField *eventText;
    IBOutlet UIDatePicker *eventDate;
}

-(IBAction)eventSave:(id)sender;
-(IBAction)keyboardClose:(id)sender;

@end


