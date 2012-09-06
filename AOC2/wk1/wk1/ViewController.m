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
         
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor blackColor];
    //Using ZombieFactory to create zombies
    FloaterZombie *floater = (FloaterZombie*) [ZombieFactory createZombie:0];
    InfectedZombie *infected = (InfectedZombie*) [ZombieFactory createZombie:1];
    ButcherZombie *butcher = (ButcherZombie*) [ZombieFactory createZombie:2];
    
    FloaterZombie *explosion = [[FloaterZombie alloc]init];
    if (explosion !=nil)
    {
        [explosion setZombieSize:4];
    }
    
    
    
    
    //LABELS
    //Floater
    floaterLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 10.0f, 310.0f, 75.0f)];
    if (floaterLabel1 !=nil)
    {
        floaterLabel1.text = [NSString stringWithFormat:@"The %@ zombie can run %d MPH.", [floater getName], [floater getSpeed]];
        floaterLabel1.textAlignment = UITextAlignmentCenter;
        floaterLabel1.textColor = [UIColor blackColor];
        floaterLabel1.backgroundColor = [UIColor orangeColor];
    }
    [self.view addSubview:floaterLabel1];
    
    floaterLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 85.0f, 310.0f, 75.0f)];
    if (floaterLabel2 !=nil)
    {
        //floaterLabel2.text = [NSString stringWithFormat:@"The %@ zombie explodes on sight, it will explode in a %d ft. radius.", [floater getName], [floater getExplosionRadius]];//<<why is this crashing??!?!?
        floaterLabel2.textAlignment = UITextAlignmentCenter;
        floaterLabel2.textColor = [UIColor blackColor];
        floaterLabel2.backgroundColor = [UIColor orangeColor];
    }
    [self.view addSubview:floaterLabel2];
    
    //Infected
    infectedLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 180.0f, 310.0f, 75.0f)];
    if (infectedLabel1 !=nil)
    {
        infectedLabel1.text = [NSString stringWithFormat:@"The %@ zombie can run %d MPH.", [infected getName], [infected getSpeed]];
        infectedLabel1.textAlignment = UITextAlignmentCenter;
        infectedLabel1.textColor = [UIColor blackColor];
        infectedLabel1.backgroundColor = [UIColor orangeColor];
    }
    [self.view addSubview:infectedLabel1];
    
    //Butcher
    butcherLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 360.0f, 310.0f, 75.0f)];
    if (butcherLabel1 !=nil)
    {
        butcherLabel1.text = [NSString stringWithFormat:@"The %@ zombie can run %d MPH.", [butcher getName], [butcher getSpeed]];
        butcherLabel1.textAlignment = UITextAlignmentCenter;
        butcherLabel1.textColor = [UIColor blackColor];
        butcherLabel1.backgroundColor = [UIColor orangeColor];
    }
    [self.view addSubview:butcherLabel1];
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
