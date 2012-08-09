//
//  ViewController.m
//  Wk2
//
//  Created by Michael Kelsey on 8/8/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Background Color
    self.view.backgroundColor = [UIColor blackColor];
    
    //Title
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 300, 40)];
    
    if (bookTitle != nil)
    {
        bookTitle.textAlignment = UITextAlignmentCenter;
        bookTitle.textColor = [UIColor blueColor];
        bookTitle.backgroundColor = [UIColor redColor];
        bookTitle.text = @"Ender's Game";
    }
    [self.view addSubview: bookTitle];
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)viewDidAppear:(BOOL)animated
{
    
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
