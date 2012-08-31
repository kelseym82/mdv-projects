//
//  BaseZombie.m
//  wk1
//
//  Created by Michael Kelsey on 8/30/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "BaseZombie.h"

@implementation BaseZombie

-(void)setAttributes:(EZombieType)type name:(NSString*)name speed:(int)speed;
{
    zombieName = name;
    zombieSpeed = speed;
    zombieType  = type;
}

@end
