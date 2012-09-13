//
//  InfectedZombie.m
//  wk1
//
//  Created by Michael Kelsey on 8/30/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "InfectedZombie.h"
#import "BaseZombie.h"

@implementation InfectedZombie

-(id)init
{
    if (self = [super init])
    {
        [self setAttributes:ZOMBIETYPE_INFECTED name:@"Infected" speed:5];
    }
    return self;
}

-(int)totalKills:(int)str
{
    return str *5;
}

@end
