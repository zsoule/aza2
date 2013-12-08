//
//  Murica.m
//  aza2
//
//  Created by Alex Orlov on 12/8/13.
//  Copyright (c) 2013 Zack. All rights reserved.
//

#import "Murica.h"

@interface Murica ()

@end

@implementation Murica

@synthesize button1;
@synthesize button2;
@synthesize button3;
@synthesize button4;
@synthesize button5;
@synthesize button6;
@synthesize button7;

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
	// Do any additional setup after loading the view.
    
    // create even handler for disappearing buttons
    [button1 addTarget:self action:@selector(button1Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button2 addTarget:self action:@selector(button2Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button3 addTarget:self action:@selector(button3Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button4 addTarget:self action:@selector(button4Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button5 addTarget:self action:@selector(button5Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button6 addTarget:self action:@selector(button6Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
    [button7 addTarget:self action:@selector(button7Click:) forControlEvents:(UIControlEvents)UIControlEventTouchDown];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonAppear:(id)sender  {
    [sender setHidden:NO];
}

// functions for when buttons are tapped
-  (void)button1Click:(id)sender
{
    [[self button1] setHidden:YES];
    [self performSelector:@selector(buttonAppear:) withObject:button1 afterDelay:10.0];
}

-  (void)button2Click:(id)sender
{
    if ((button1.hidden==YES)) {
        [button2 setHidden:YES];
        [self performSelector:@selector(buttonAppear:) withObject:button2 afterDelay:10.0];
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
        [self performSelector:@selector(buttonAppear:) withObject:button3 afterDelay:10.0];
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
        [self performSelector:@selector(buttonAppear:) withObject:button4 afterDelay:10.0];
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
        [self performSelector:@selector(buttonAppear:) withObject:button5 afterDelay:10.0];
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
        [self performSelector:@selector(buttonAppear:) withObject:button6 afterDelay:10.0];
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

-  (void)button7Click:(id)sender  {
    if ((button1.hidden==YES) && (button2.hidden==YES) && (button3.hidden==YES) && (button4.hidden==YES) && (button5.hidden==YES) && (button6.hidden==YES))  {
        [button7 setHidden:YES];
        
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
    }
}

@end
