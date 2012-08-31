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
#import "InfectedZombie.h"
#import "ButcherZombie.h"
#import "ZombieFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor blackColor];
    //Using ZombieFactory to create zombies
    FloaterZombie *floater = (FloaterZombie*) [ZombieFactory createZombie:0];
    InfectedZombie *infected = (InfectedZombie*) [ZombieFactory createZombie:1];
    ButcherZombie *butcher = (ButcherZombie*) [ZombieFactory createZombie:2];

    
    
    
    //LABELS
    //Floater
    floaterLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 10.0f, 310.0f, 75.0f)];
    if (floaterLabel !=nil)
    {
        floaterLabel.text = [NSString stringWithFormat:@"The %@ zombie can run %d MPH.", [floater getName], [floater getSpeed]];
        floaterLabel.textAlignment = UITextAlignmentCenter;
        floaterLabel.textColor = [UIColor blackColor];
        floaterLabel.backgroundColor = [UIColor orangeColor];
    }
    [self.view addSubview:floaterLabel];
    
    //Infected
    infectedLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 180.0f, 310.0f, 75.0f)];
    if (infectedLabel !=nil)
    {
        infectedLabel.text = [NSString stringWithFormat:@"The %@ zombie can run %d MPH.", [infected getName], [infected getSpeed]];
        infectedLabel.textAlignment = UITextAlignmentCenter;
        infectedLabel.textColor = [UIColor blackColor];
        infectedLabel.backgroundColor = [UIColor orangeColor];
    }
    [self.view addSubview:infectedLabel];
    
    //Butcher
    butcherLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 360.0f, 310.0f, 75.0f)];
    if (butcherLabel !=nil)
    {
        butcherLabel.text = [NSString stringWithFormat:@"The %@ zombie can run %d MPH.", [butcher getName], [butcher getSpeed]];
        butcherLabel.textAlignment = UITextAlignmentCenter;
        butcherLabel.textColor = [UIColor blackColor];
        butcherLabel.backgroundColor = [UIColor orangeColor];
    }
    [self.view addSubview:butcherLabel];

        
    
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
