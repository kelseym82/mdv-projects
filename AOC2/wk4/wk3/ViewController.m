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
        if (button.tag == 1)
        {
            NSUserDefaults *savedEvents = [NSUserDefaults standardUserDefaults];
            if (savedEvents !=nil)
            {
                NSString *eventString = eventView.text;
                
                [savedEvents setObject:eventString forKey:@"savedEvents"];
                
                [savedEvents synchronize];
            }
        }
    }
}

-(void)onSwipe:(UIGestureRecognizer*)swipe
{
    DatePickerController *events = [[DatePickerController alloc] initWithNibName:@"DatePickerController" bundle:nil];
    if (events !=nil)
    {
        events.delegate = self;
        [self presentModalViewController:events animated:TRUE];
    }
}

//Adds the event to the main screen.
-(void)loadEventToScreen:(NSString *)eventString
{
    eventView.text = [eventView.text stringByAppendingString:eventString];
}




- (void)viewDidLoad
{
    
    rightSwiper = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(onSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel addGestureRecognizer:rightSwiper];
    
    NSUserDefaults *savedEvents = [NSUserDefaults standardUserDefaults];
    if (savedEvents !=nil)
    {
        NSString *eventString = [savedEvents objectForKey:@"savedEvents"];
        
        eventView.text = eventString;
    }
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
