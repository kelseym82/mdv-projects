//
//  ViewController.m
//  wk1
//
//  Created by Michael Kelsey on 8/30/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "ViewController.h"
#import "BaseZombie.h"
#import "FloaterZombie.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    FloaterZombie *floaterZombie = [[FloaterZombie alloc]init];
    if (floaterZombie !=nil)
    {
        [floaterZombie setAttributes];
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
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
