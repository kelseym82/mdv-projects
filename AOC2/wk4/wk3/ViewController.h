//
//  ViewController.h
//  wk3
//
//  Created by Michael Kelsey on 9/13/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DatePickerController.h"



@interface ViewController : UIViewController <EventDelegate>
{
    IBOutlet UITextView *eventView;
    IBOutlet UILabel *swipeLabel;
    UISwipeGestureRecognizer *rightSwiper;

    

}

-(IBAction)onClick:(id)sender;

@end
