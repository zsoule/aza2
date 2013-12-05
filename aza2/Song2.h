//
//  Song2.h
//  aza2
//
//  Created by Zack on 12/4/13.
//  Copyright (c) 2013 Zack. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@interface BasicSoundsAppDelegate : NSObject <UIApplicationDelegate, AVAudioPlayerDelegate> {
	AVAudioPlayer *_backgroundMusicPlayer;
	BOOL _backgroundMusicPlaying;
	BOOL _backgroundMusicInterrupted;
	UInt32 _otherMusicIsPlaying;
}


@end

@interface Song2 : UIViewController

-(IBAction)pauseTap:(id)sender;


@end

