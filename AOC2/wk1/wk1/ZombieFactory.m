//
//  ZombieFactory.m
//  wk1
//
//  Created by Michael Kelsey on 8/30/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "ZombieFactory.h"
#import "BaseZombie.h"

@implementation ZombieFactory

+(BaseZombie*)createZombie:(EZombieType)zombieType
{
    if (zombieType == 0)
    {
        return [[BaseZombie alloc] setAttributes:0 name:@"Floater" speed:2];
    }
    else if (zombieType == 1)
    {
        return [[BaseZombie alloc] setAttributes:1 name:@"Infected" speed:5];
    }
    else if (zombieType == 2)
    {
        return [[BaseZombie alloc] setAttributes:2 name:@"Butcher" speed:10];
    }
    return nil;
}

@end

