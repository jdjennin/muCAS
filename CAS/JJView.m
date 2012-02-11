//
//  JJView.m
//  socializeit
//
//  Created by Jacob Jennings on 11/21/11.
//  Copyright (c) 2011 Twin Engine Labs. All rights reserved.
//

#import "JJView.h"

@implementation JJView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setFrame:(CGRect)frame {
  //  NSLog(@"JJLabel frame: (%f, %f), width: %f, height: %f", frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
  if (frame.origin.x > 0) {
    [super setFrame:CGRectMake(0, (44 - frame.size.height ) / 2, 320, frame.size.height)];;
  } else {
    [super setFrame:CGRectMake((320 - frame.size.width) / 2, (44 - frame.size.height) / 2 , frame.size.width, frame.size.height)];
  }
  [self.superview sendSubviewToBack:self];
}

@end
