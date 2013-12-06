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
@property (weak, nonatomic) IBOutlet UIButton *testbutton;
@property (weak, nonatomic) IBOutlet UIButton *button1;

- (IBAction)pauseTap:(id)sender;

@end
