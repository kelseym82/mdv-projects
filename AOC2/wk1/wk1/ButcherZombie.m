//
//  ButcherZombie.m
//  wk1
//
//  Created by Michael Kelsey on 8/30/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "ButcherZombie.h"
#import "BaseZombie.h"

@implementation ButcherZombie

-(id)init
{
    if (self = [super init])
    {
        [self setAttributes:ZOMBIETYPE_BUTCHER name:@"Butcher" speed:10];
    }
    return self;
}

-(int)totalKills:(int)str
{
    return killCount + str;
}

@end
