//
//  BaseZombie.h
//  wk1
//
//  Created by Michael Kelsey on 8/30/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import <Foundation/Foundation.h>

//SOURCE FOR ZOMBIE TYPE IS http://wikigameguides.com/Dead_Island/wiki/Zombie_Types-15300
typedef enum
{
    ZOMBIETYPE_FLOATER=0,
    ZOMBIETYPE_INFECTED,
    ZOMBIETYPE_BUTCHER
}EZombieType;

@interface BaseZombie : NSObject
{
    EZombieType zombieType;
    NSString *zombieName;
    int zombieSpeed;
}

//Getters
-(NSString*)getName;
-(int)getSpeed;

//Setter (Mutator)
-(id)setAttributes:(EZombieType)type name:(NSString*)name speed:(int)speed;

//Calculation
-(int)totalKills:(int)str;

@end
