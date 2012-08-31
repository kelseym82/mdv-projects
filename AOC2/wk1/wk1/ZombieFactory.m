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

+(BaseZombie*)GetZombie:(EZombieType)zombieType
{
    if (zombieType == 0)
    {
        return [[ZOMBIETYPE_FLOATER alloc] initWithDetails:0 name:@"Zombie"];
    }
    else if (zombieType == 1)
    {
        return [[ZOMBIETYPE_INFECTED alloc] initWithDetails:0 name:@"Zombie"];
    }
    else if (zombieType == 2)
    {
        return [[ZOMBIETYPE_BUTCHER alloc] initWithDetails:0 name:@"Zombie"];
    }
    return nil;
}

@end

