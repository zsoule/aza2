//
//  Song2.h
//  aza2
//
//  Created by Zack on 12/4/13.
//  Copyright (c) 2013 Zack. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@interface Song2 : UIViewController

@property (nonatomic, retain) AVAudioPlayer *player;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;
@property (weak, nonatomic) IBOutlet UIButton *button6;

- (IBAction)pauseTap:(id)sender;
- (void)button1Appear:(id)sender;
- (void)button2Appear:(id)sender;
- (void)button3Appear:(id)sender;
- (void)button4Appear:(id)sender;
- (void)button5Appear:(id)sender;
- (void)button6Appear:(id)sender;

@end
