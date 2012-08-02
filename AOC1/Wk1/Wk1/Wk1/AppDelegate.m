//
//  AppDelegate.m
//  Wk1
//
//  Created by Michael Kelsey on 8/2/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //Code starts here
    
    //REMINDERS
    //boolean logic operators
    /*
     == equals
     != not equal
     < less than
     <= less than or equal to
     > greater than
     >= greater than or equal to
     */
    
    
    //Variables
    bool isZombieApocalypse = YES;
    bool zombiesPresent = YES;
    float daysWithoutFood = 2.3f;
    int ammoCount = 9;
    int zombieCount = arc4random() % 12;//<<random zombie count MAX 12 zombies
    
    
    
    //Checks to see if it is the Zombie Apocalypse
    if (isZombieApocalypse == YES) {
        NSLog(@"OMG it's the Zombie Apocalypse!!!");
    }
    else {
        NSLog(@"Such a beautiful Zombie-free day.");
    }
    
    
    //Finds how many zombies are around you, and compares that number to ammount of ammo you have.
    if (isZombieApocalypse && zombiesPresent) {
        if (zombieCount > ammoCount) {
            NSLog(@"I am getting the heck out of here!");
        }
        else if (zombieCount <= ammoCount){
            NSLog(@"Time to kill me some zombies");
            //Nested Loop
            for (int i = zombieCount; i >= 0; i--) {
                if (i > 1) {
                    NSLog(@"Bang! Only %i zombies left", i);
                }
                else if (i == 1)
                    NSLog(@"Bang! Only %i zombie left", i);
                else {
                    NSLog(@"Bang! Last one. Good, I survive another day.");
                }
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
