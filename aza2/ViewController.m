//
//  ViewController.m
//  aza2
//
//  Created by Zack on 12/4/13.
//  Copyright (c) 2013 Zack. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    CGRect screenSize = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenSize.size.height;
    // have to use height because of screen orientation
    
    
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, screenWidth, 240)];
                        
    myLabel.text = @"AZZZZZZZZZZZZA";
    myLabel.textColor = [UIColor colorWithWhite:1 alpha:1];
    [myLabel setFont:[UIFont fontWithName:@"Chalkduster" size:24]];
    
    myLabel.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:myLabel];
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
