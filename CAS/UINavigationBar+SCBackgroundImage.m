//
//  UINavigationBar+SCBackgroundImage.m
//  RghtCrwd
//
//  Created by Jacob Jennings on 10/17/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "UINavigationBar+SCBackgroundImage.h"
#import "SCAppUtils.h"

@implementation UINavigationBar (SCBackgroundImage)

- (void)scInsertSubview:(UIView *)view atIndex:(NSInteger)index
{
  [self scInsertSubview:view atIndex:index];
  
  UIView *backgroundImageView = [self viewWithTag:kSCNavBarImageTag];
  if (backgroundImageView != nil)
  {
//    [self scSendSubviewToBack:backgroundImageView];
    [self bringSubviewToFront:backgroundImageView];
    for (UIView *v in self.subviews) {
      if (![v isKindOfClass:[UIImageView class]]) {
        [self bringSubviewToFront:v];
      }
    }
  }
}

- (void)scSendSubviewToBack:(UIView *)view
{
  [self scSendSubviewToBack:view];
  
  UIView *backgroundImageView = [self viewWithTag:kSCNavBarImageTag];
  if (backgroundImageView != nil)
  {
//    [self scSendSubviewToBack:backgroundImageView];
    [self bringSubviewToFront:backgroundImageView];
    for (UIView *v in self.subviews) {
      if (![v isKindOfClass:[UIImageView class]]) {
        [self bringSubviewToFront:v];
      }
    }
  }
}

@end

