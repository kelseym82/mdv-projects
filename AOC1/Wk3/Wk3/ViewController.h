//
//  ViewController.h
//  Wk3
//
//  Created by Michael Kelsey on 8/15/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(int)add:(int)firstNumber with:(int)secondNumber;
-(BOOL)compare:(int)firstNumber with:(int)secondNumber;
-(NSString *)append:(NSString *)firstString with:(NSString *)secondString;
-(void)displayAlertWithString:(NSString *)string;
-(int)add;



@end
