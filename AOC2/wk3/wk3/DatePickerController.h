//
//  ViewController+DatePickerController.h
//  wk3
//
//  Created by Michael Kelsey on 9/13/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//


#import "UIKit/UIKit.h"





@protocol EventDelegate <NSObject>

@required
-(void)loadEventToScreen:(NSString *)eventString;

@end

@interface DatePickerController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UITextField *eventText;
    IBOutlet UIDatePicker *eventDate;
    NSString *event;
    NSString *date;
    id <EventDelegate> delegate;

}


-(IBAction)onClick:(id)sender;

@property(strong) id<EventDelegate> delegate;
@property(retain)IBOutlet UIDatePicker *eventDate;

@end


