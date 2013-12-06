//
//  Song2.m
//  aza2
//
//  Created by Zack on 12/4/13.
//  Copyright (c) 2013 Zack. All rights reserved.
//

#import "button.h"
#import "Song2.h"
#import <AVFoundation/AVFoundation.h>

@interface Song2 ()

@end

@implementation Song2

@synthesize testbutton;
@synthesize button1;

@synthesize player;

bool paused = NO;

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
    
    
    // for positioning
    CGRect screenSize = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenSize.size.height;
    // have to use height because of screen orientation
    CGFloat screenHeight = screenSize.size.width;
    
    // pause button
    UIButton *pauseButton = [[UIButton alloc] initWithFrame:CGRectMake((screenWidth-screenWidth/22)/2, screenHeight-screenHeight/12, screenWidth/22, screenHeight/12)];

    [pauseButton setImage:[UIImage imageNamed:@"pause.png"] forState:UIControlStateNormal];
    [pauseButton addTarget:self action:@selector(pauseTap:) forControlEvents:UIControlEventTouchUpInside];
    
    // create even handler for disappearing button
    [testbutton addTarget:self action:@selector(testButtonClick:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    
    [testbutton addTarget:self action:@selector(button1Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    
    [self.view addSubview:pauseButton];
    

    // music
    SystemSoundID soundID;
    NSString *soundFile = [[NSBundle mainBundle] pathForResource:@"HeavyHunter" ofType:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge  CFURLRef) [NSURL fileURLWithPath:soundFile], & soundID);
    AudioServicesPlaySystemSound(soundID);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-  (void)testButtonClick:(id)sender {
    [[self testbutton] setHidden:YES];
}

-  (void)button1Click:(id)sender {
    [[self button1] setHidden:YES];
}

-(void)pauseTap:(id)sender
{
    [self.view setBackgroundColor:[UIColor colorWithRed:1 green:0 blue:0 alpha:1]];
    
    if(paused == NO)
    {
        
        
    }
    
}
@end
