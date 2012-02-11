//
//  SCAppUtils.m
//  RghtCrwd
//
//  Created by Jacob Jennings on 10/17/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "SCAppUtils.h"
#import <QuartzCore/QuartzCore.h>

@implementation SCAppUtils

+ (void)customizeNavigationController:(UINavigationController *)navController
{
  UINavigationBar *navBar = [navController navigationBar];
  [navBar setTintColor:[UIColor clearColor]];
  
  UIImageView *imageView = (UIImageView *)[navBar viewWithTag:kSCNavBarImageTag];
  if (imageView == nil)
  {
    imageView = [[UIImageView alloc] initWithImage:
                 [UIImage imageNamed:@"img_nav_bar_bg.png"]];
    imageView.frame = CGRectMake(0, 0, 320, 44);
    imageView.contentMode = UIViewContentModeScaleToFill;
    [imageView setTag:kSCNavBarImageTag];
    [imageView setBackgroundColor:[UIColor clearColor]];
    [navBar insertSubview:imageView atIndex:0];
    [imageView release];
  }
  navBar.frame = CGRectMake(0, 0, 320, 44);
  navBar.bounds = CGRectMake(0, 0, 320, 44);
  navBar.layer.bounds = CGRectMake(0, 0, 320, 44);
  navBar.layer.masksToBounds = NO;
  navBar.clipsToBounds = NO;
}

@end