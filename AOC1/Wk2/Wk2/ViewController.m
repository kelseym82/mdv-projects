//
//  ViewController.m
//  Wk2
//
//  Created by Michael Kelsey on 8/8/12.
//  Copyright (c) 2012 Michael Kelsey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Background Color
    self.view.backgroundColor = [UIColor blackColor];
    
    //bookTitle
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, 320, 20)];
    
    if (bookTitle != nil)
    {
        bookTitle.textAlignment = UITextAlignmentCenter;
        bookTitle.textColor = [UIColor yellowColor];
        bookTitle.backgroundColor = [UIColor orangeColor];
        bookTitle.text = @"Ender's Game";
    }
    [self.view addSubview: bookTitle];
    
    //authorLabel
    authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 45, 100, 20)];
    
    if (authorLabel != nil)
    {
        authorLabel.textAlignment = UITextAlignmentRight;
        authorLabel.textColor = [UIColor blueColor];
        authorLabel.backgroundColor = [UIColor magentaColor];
        authorLabel.text = @"Author:";
    }
    [self.view addSubview: authorLabel];
    
    //authorName
    authorName = [[UILabel alloc] initWithFrame:CGRectMake(110, 45, 210, 20)];
    
    if (authorName != nil)
    {
        authorName.textAlignment = UITextAlignmentLeft;
        authorName.textColor = [UIColor greenColor];
        authorName.backgroundColor = [UIColor purpleColor];
        authorName.text = @"Orson Scott Card";
    }
    [self.view addSubview: authorName];
    
    //publishedLabel
    publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 70, 100, 20)];
    
    if (publishedLabel != nil)
    {
        publishedLabel.textAlignment = UITextAlignmentRight;
        publishedLabel.textColor = [UIColor blueColor];
        publishedLabel.backgroundColor = [UIColor redColor];
        publishedLabel.text = @"Published:";
    }
    [self.view addSubview: publishedLabel];
    
    //publishedDate
    publishedDate = [[UILabel alloc] initWithFrame:CGRectMake(110, 70, 210, 20)];
    
    if (publishedDate != nil)
    {
        publishedDate.textAlignment = UITextAlignmentLeft;
        publishedDate.textColor = [UIColor magentaColor];
        publishedDate.backgroundColor = [UIColor whiteColor];
        publishedDate.text = @"1985";
    }
    [self.view addSubview: publishedDate];
    
    //summaryLabel
    summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 95, 100, 20)];
    
    if (summaryLabel != nil)
    {
        summaryLabel.textAlignment = UITextAlignmentLeft;
        summaryLabel.textColor = [UIColor redColor];
        summaryLabel.backgroundColor = [UIColor cyanColor];
        summaryLabel.text = @"Summary";
    }
    [self.view addSubview: summaryLabel];
  
    //summaryText
    summaryText = [[UILabel alloc] initWithFrame:CGRectMake(0, 120, 320, 175)];
    
    if (summaryText != nil)
    {
        summaryText.textAlignment = UITextAlignmentCenter;
        summaryText.textColor = [UIColor orangeColor];
        summaryText.backgroundColor = [UIColor darkGrayColor];
        summaryText.numberOfLines = 8;
        summaryText.text = @"The novel is set in Earth's future after the world has experienced two conflicts with an alien race called the Formics.  The book follows a group of elite children that are sent to battle school. The most talented among them is a child known as Ender, who is being tought to defend the earth against the next attack.";
    }
    [self.view addSubview: summaryText];
    
    //itemListLabel
    itemListLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 300, 100, 20)];
    
    if (itemListLabel != nil)
    {
        itemListLabel.textAlignment = UITextAlignmentLeft;
        itemListLabel.textColor = [UIColor lightGrayColor];
        itemListLabel.backgroundColor = [UIColor brownColor];
        itemListLabel.text = @"List of Items:";
    }
    [self.view addSubview: itemListLabel];
    
    
    
    //mutableArray
    NSArray *items = [[NSArray alloc] initWithObjects:
                      @"Buggers, ",
                      @"Battle School, ",
                      @"Desk, ",
                      @"The Game, ",
                      @"Space Ship",
                      nil];
    
    NSMutableString *mutableList = [[NSMutableString alloc] init];
    for (int i=0; i < [items count]; i++)
    {
        [mutableList appendString: [items objectAtIndex:i]];
    }

    //itemListText
    
    itemListText = [[UILabel alloc] initWithFrame:CGRectMake(0, 325, 320, 100)];
    
    if (itemListText != nil)
    {
        itemListText.textAlignment = UITextAlignmentCenter;
        itemListText.textColor = [UIColor greenColor];
        itemListText.backgroundColor = [UIColor blueColor];
        itemListText.numberOfLines = 5;
        itemListText.text = mutableList;
        
    }
    [self.view addSubview: itemListText];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)viewDidAppear:(BOOL)animated
{
    
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
