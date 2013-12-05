//
//  Song2.m
//  aza2
//
//  Created by Zack on 12/4/13.
//  Copyright (c) 2013 Zack. All rights reserved.
//

#import "Song2.h"

@interface Song2 ()

@end

@implementation Song2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.


    CGRect screenSize = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenSize.size.height;
    // have to use height because of screen orientation
    
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, screenWidth, 240)];
    
    myLabel.text = @"AZA";
    myLabel.textColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    [myLabel setFont:[UIFont fontWithName:@"Chalkduster" size:24]];
    
    myLabel.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:myLabel];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)pauseTap:(id)sender
{
    [self.view setBackgroundColor:[UIColor colorWithRed:1 green:0 blue:0 alpha:1]];
    
    
    
}

@end
