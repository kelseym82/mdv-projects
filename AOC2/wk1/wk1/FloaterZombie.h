//
//  FloaterZombie.h
//  wk1
//
//  Created by Michael Kelsey on 8/30/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseZombie.h"

@interface FloaterZombie : BaseZombie
{
    int explosionRadius;
    int temp;
}

-(void)setZombieSize: (int)sizeOfZombie;
-(int)getExplosionRadius;

@end
