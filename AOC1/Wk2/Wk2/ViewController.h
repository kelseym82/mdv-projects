//
//  ViewController.h
//  Wk2
//
//  Created by Michael Kelsey on 8/8/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *bookTitle,
            *authorLabel,
            *authorName,
            *publishedLabel,
            *publishedDate,
            *summaryLabel,
            *summaryText,
            *itemListLabel,
            *itemListText;
    NSMutableArray *mutableArray;
}

@end
