//
//  FloaterZombie.m
//  wk1
//
//  Created by Michael Kelsey on 8/30/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "FloaterZombie.h"
#import "BaseZombie.h"

@implementation FloaterZombie

-(id)init
{
    if (self = [super init])
    {
        [self setAttributes:ZOMBIETYPE_FLOATER name:@"Floater" speed:2];
    }
    return self;
}

@end
