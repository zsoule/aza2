//
//  Easy.m
//  aza2
//
//  Created by Zack on 12/4/13.
//  Copyright (c) 2013 Zack. All rights reserved.
//


#import "button.h"
#import "Easy.h"
#import <AVFoundation/AVFoundation.h>

@interface Easy ()

@end

@implementation Easy

@synthesize button1;
@synthesize button2;
@synthesize button3;
@synthesize button4;
@synthesize button5;
@synthesize button6;


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
    
    // create even handler for disappearing buttons
    [button1 addTarget:self action:@selector(button1Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button2 addTarget:self action:@selector(button2Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button3 addTarget:self action:@selector(button3Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button4 addTarget:self action:@selector(button4Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button5 addTarget:self action:@selector(button5Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button6 addTarget:self action:@selector(button6Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    
    /*
    // playing the music
    // code adapted from the following stack overflow post:
    // http://stackoverflow.com/questions/15236421/ios-xcode-4-6-adding-audio-to-app
    SystemSoundID song;
    NSString *songFile = [[NSBundle mainBundle] pathForResource:@"HeavyHunter" ofType:@"wav"];
    if(songFile)
    {
        OSStatus status = AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:songFile], &song);
        if(status == noErr)
        {
            AudioServicesPlaySystemSound(song);
        } else {
            NSLog( @"No song id created; error status code is %d", (int)status);
        }
    } else {
        NSLog( @"Couldn't find sound file.");
    }
    */
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// function to make button appear
- (void)buttonAppear:(id)sender
{
    [sender setHidden:NO];
}


// functions for when buttons are tapped
-  (void)button1Click:(id)sender
{
    [[self button1] setHidden:YES];
}

-  (void)button2Click:(id)sender
{
    if ((button1.hidden==YES)) {
        [button2 setHidden:YES];
    }
    else  {
        [button2 setHidden:NO];
        [button1 setHidden:NO];
    }
}

-  (void)button3Click:(id)sender
{
    if ((button1.hidden==YES) && (button2.hidden==YES))  {
        [button3 setHidden:YES];
    }
    else  {
        [button1 setHidden:NO];
        [button2 setHidden:NO];
        [button3 setHidden:NO];
    }
}

-  (void)button4Click:(id)sender
{
    if ((button1.hidden==YES) && (button2.hidden==YES) && (button3.hidden==YES))  {
        [button4 setHidden:YES];
    }
    else  {
        [button1 setHidden:NO];
        [button2 setHidden:NO];
        [button3 setHidden:NO];
        [button4 setHidden:NO];
    }
}

-  (void)button5Click:(id)sender
{
    if ((button1.hidden==YES) && (button2.hidden==YES) && (button3.hidden==YES) && (button4.hidden==YES))  {
        [button5 setHidden:YES];
    }
    else  {
        [button1 setHidden:NO];
        [button2 setHidden:NO];
        [button3 setHidden:NO];
        [button4 setHidden:NO];
        [button5 setHidden:NO];
    }
}

-  (void)button6Click:(id)sender
{
    if ((button1.hidden==YES) && (button2.hidden==YES) && (button3.hidden==YES) && (button4.hidden==YES) && (button5.hidden==YES))  {
        [button6 setHidden:YES];
    }
    else  {
        [button1 setHidden:NO];
        [button2 setHidden:NO];
        [button3 setHidden:NO];
        [button4 setHidden:NO];
        [button5 setHidden:NO];
        [button6 setHidden:NO];
    }
}



// function controlling pause
-(void)pauseTap:(id)sender
{
    [self.view setBackgroundColor:[UIColor colorWithRed:1 green:0 blue:0 alpha:1]];
    
    if(paused == NO)
    {
        
        
    }
    
}
@end
