//
//  Hard.m
//  aza2
//
//  Created by Alex Orlov on 12/7/13.
//  Copyright (c) 2013 Zack. All rights reserved.
//

#import "Hard.h"

@interface Hard ()

@end

@implementation Hard


int buttonNum = 10;

UIButton *button1;
UIButton *button2;
UIButton *button3;
UIButton *button4;
UIButton *button5;
UIButton *button6;
UIButton *button7;
UIButton *button8;
UIButton *button9;
UIButton *button10;



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
    
    int xposition[buttonNum];
    int yposition[buttonNum];
    

    //randomize positions
    for (int i = 0; i < buttonNum; i++)
    {
        xposition[i] = arc4random_uniform(screenWidth-screenWidth/20);
        yposition[i] = arc4random_uniform(screenHeight-screenHeight/20);
        
    }
    
    // allocate buttons
    button1 = [[UIButton alloc] initWithFrame:CGRectMake(xposition[0], yposition[0], screenWidth/20, screenHeight/10)];
    button2 = [[UIButton alloc] initWithFrame:CGRectMake(xposition[1], yposition[1], screenWidth/20, screenHeight/10)];
    button3 = [[UIButton alloc] initWithFrame:CGRectMake(xposition[2], yposition[2], screenWidth/20, screenHeight/10)];
    button4 = [[UIButton alloc] initWithFrame:CGRectMake(xposition[3], yposition[3], screenWidth/20, screenHeight/10)];
    button5 = [[UIButton alloc] initWithFrame:CGRectMake(xposition[4], yposition[4], screenWidth/20, screenHeight/10)];
    button6 = [[UIButton alloc] initWithFrame:CGRectMake(xposition[5], yposition[5], screenWidth/20, screenHeight/10)];
    button7 = [[UIButton alloc] initWithFrame:CGRectMake(xposition[6], yposition[6], screenWidth/20, screenHeight/10)];
    button8 = [[UIButton alloc] initWithFrame:CGRectMake(xposition[7], yposition[7], screenWidth/20, screenHeight/10)];
    button9 = [[UIButton alloc] initWithFrame:CGRectMake(xposition[8], yposition[8], screenWidth/20, screenHeight/10)];
    button10 = [[UIButton alloc] initWithFrame:CGRectMake(xposition[9], yposition[9], screenWidth/20, screenHeight/10)];
    
    
    // set backgorund image
    [button1 setImage:[UIImage imageNamed:@"mediumButton.png"] forState:UIControlStateNormal];
    [button2 setImage:[UIImage imageNamed:@"mediumButton.png"] forState:UIControlStateNormal];
    [button3 setImage:[UIImage imageNamed:@"mediumButton.png"] forState:UIControlStateNormal];
    [button4 setImage:[UIImage imageNamed:@"mediumButton.png"] forState:UIControlStateNormal];
    [button5 setImage:[UIImage imageNamed:@"mediumButton.png"] forState:UIControlStateNormal];
    [button6 setImage:[UIImage imageNamed:@"mediumButton.png"] forState:UIControlStateNormal];
    [button7 setImage:[UIImage imageNamed:@"mediumButton.png"] forState:UIControlStateNormal];
    [button8 setImage:[UIImage imageNamed:@"mediumButton.png"] forState:UIControlStateNormal];
    [button9 setImage:[UIImage imageNamed:@"mediumButton.png"] forState:UIControlStateNormal];
    [button10 setImage:[UIImage imageNamed:@"mediumButton.png"] forState:UIControlStateNormal];
    
    // add buttons to view
    [self.view addSubview:button1];
    [self.view addSubview:button2];
    [self.view addSubview:button3];
    [self.view addSubview:button4];
    [self.view addSubview:button5];
    [self.view addSubview:button6];
    [self.view addSubview:button7];
    [self.view addSubview:button8];
    [self.view addSubview:button9];
    [self.view addSubview:button10];
    
    
    // create event handlers for disappearing buttons
    [button1 addTarget:self action:@selector(button1Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button2 addTarget:self action:@selector(button2Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button3 addTarget:self action:@selector(button3Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button4 addTarget:self action:@selector(button4Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button5 addTarget:self action:@selector(button5Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button6 addTarget:self action:@selector(button6Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button7 addTarget:self action:@selector(button7Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button8 addTarget:self action:@selector(button8Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button9 addTarget:self action:@selector(button9Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button10 addTarget:self action:@selector(button10Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    
    /* Decided to cut this out
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


// functions for when buttons are tapped
// if correct time for button to be tapped, button disappears
// else, all buttons reappear
-  (void)button1Click:(id)sender
{
    [button1 setHidden:YES];
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


-  (void)button7Click:(id)sender
{
    if ((button1.hidden==YES) && (button2.hidden==YES) && (button3.hidden==YES) && (button4.hidden==YES) && (button5.hidden==YES) && (button6.hidden==YES))  {
        [button7 setHidden:YES];
    }
    else  {
        [button1 setHidden:NO];
        [button2 setHidden:NO];
        [button3 setHidden:NO];
        [button4 setHidden:NO];
        [button5 setHidden:NO];
        [button6 setHidden:NO];
        [button7 setHidden:NO];

    }
}


-  (void)button8Click:(id)sender
{
    if ((button1.hidden==YES) && (button2.hidden==YES) && (button3.hidden==YES) && (button4.hidden==YES) && (button5.hidden==YES) && (button6.hidden==YES) && (button7.hidden==YES))
    {
        [button8 setHidden:YES];
    }
    else  {
        [button1 setHidden:NO];
        [button2 setHidden:NO];
        [button3 setHidden:NO];
        [button4 setHidden:NO];
        [button5 setHidden:NO];
        [button6 setHidden:NO];
        [button7 setHidden:NO];
        [button8 setHidden:NO];
    }
}


-  (void)button9Click:(id)sender
{
    if ((button1.hidden==YES) && (button2.hidden==YES) && (button3.hidden==YES) && (button4.hidden==YES) && (button5.hidden==YES) && (button6.hidden==YES) && (button7.hidden==YES) && (button8.hidden==YES))  {
        [button9 setHidden:YES];
    }
    else  {
        [button1 setHidden:NO];
        [button2 setHidden:NO];
        [button3 setHidden:NO];
        [button4 setHidden:NO];
        [button5 setHidden:NO];
        [button6 setHidden:NO];
        [button7 setHidden:NO];
        [button8 setHidden:NO];
        [button9 setHidden:NO];

    }
}


-  (void)button10Click:(id)sender
{
    if ((button1.hidden==YES) && (button2.hidden==YES) && (button3.hidden==YES) && (button4.hidden==YES) && (button5.hidden==YES) && (button6.hidden==YES) && (button7.hidden==YES) && (button8.hidden==YES) && (button9.hidden==YES))
    {
        [button10 setHidden:YES];
        
        // win condition
        UIViewController *winScreen = [[UIStoryboard storyboardWithName:@"Main_iPhone" bundle:Nil] instantiateViewControllerWithIdentifier:@"winScreen"];
        [self presentViewController:winScreen animated:NO completion:nil];
    }
    else  {
        [button1 setHidden:NO];
        [button2 setHidden:NO];
        [button3 setHidden:NO];
        [button4 setHidden:NO];
        [button5 setHidden:NO];
        [button6 setHidden:NO];
        [button7 setHidden:NO];
        [button8 setHidden:NO];
        [button9 setHidden:NO];
        [button10 setHidden:NO];

    }
}


@end
