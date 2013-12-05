//
//  button.m
//  aza2
//
//  Created by Zack on 12/5/13.
//  Copyright (c) 2013 Zack. All rights reserved.
//

#import "button.h"

@implementation button

- (id)initWithFrame:(CGRect)frame
{
    
    
    // for positioning
    CGRect screenSize = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenSize.size.height;
    // have to use height because of screen orientation
    CGFloat screenHeight = screenSize.size.width;
    
    self = [super initWithFrame:CGRectMake(0, 0, screenWidth/22, screenHeight/12)];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
