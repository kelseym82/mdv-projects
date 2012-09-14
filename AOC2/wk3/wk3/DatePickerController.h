//
//  ViewController+DatePickerController.h
//  wk3
//
//  Created by Michael Kelsey on 9/13/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//


#import "UIKit/UIKit.h"




//Took a while to figure out how to do this... then I remembered the week two videos... DUH!
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
//required to retain the event date, otherwise it will not pass it back to viewcontroller
@property(retain)IBOutlet UIDatePicker *eventDate;

@end


