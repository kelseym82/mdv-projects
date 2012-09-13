//
//  BaseZombie.m
//  wk1
//
//  Created by Michael Kelsey on 8/30/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "BaseZombie.h"

@implementation BaseZombie

-(id)setAttributes:(EZombieType)type name:(NSString*)name speed:(int)speed;
{
    if(self = [super init])
    {
        zombieName = name;
        zombieSpeed = speed;
        zombieType  = type;
    }
    return self;
}

-(NSString*)getName
{
    return zombieName;
}

-(int)getSpeed
{
    return zombieSpeed;
}

-(int)totalKills:(int)str
{
    return str * 2;
}



@end
