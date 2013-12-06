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

@end
