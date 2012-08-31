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
        explosionRadius = 0;
    }
    return self;
}

-(void)setZombieSize: (int)sizeOfZombie
{
     explosionRadius = sizeOfZombie * 4;
}

-(int)getExplosionRadius
{
    return explosionRadius;
}

    

@end
