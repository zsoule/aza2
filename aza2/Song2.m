//
//  Song2.m
//  aza2
//
//  Created by Zack on 12/4/13.
//  Copyright (c) 2013 Zack. All rights reserved.
//

#import "Song2.h"
#import <AVFoundation/AVFoundation.h>

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
    CGFloat screenHeight = screenSize.size.width;
    
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, screenWidth, 240)];
    
    myLabel.text = @"AZA";
    myLabel.textColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    [myLabel setFont:[UIFont fontWithName:@"Chalkduster" size:24]];
    
    myLabel.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:myLabel];
    
    
    
    // pause button
    UIButton *pauseButton = [[UIButton alloc] initWithFrame:CGRectMake((screenWidth-screenWidth/22)/2, screenHeight-screenHeight/12, screenWidth/22, screenHeight/12)];

    [pauseButton setImage:[UIImage imageNamed:@"pause.png"] forState:UIControlStateNormal];
    [pauseButton addTarget:self action:@selector(pauseTap:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:pauseButton];
    
    
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"HeavyHunter" ofType:@"mp3"]];
    AVAudioPlayer *music2 = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    
    music2.volume = 1;
    [music2 description];
    
    BOOL test = [music2 play];
    BOOL falsed = NO;
    
    NSLog(@"%d and %d",test, falsed);
    
    
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
