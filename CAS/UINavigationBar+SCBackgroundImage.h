//
//  UINavigationBar+SCBackgroundImage.h
//  RghtCrwd
//
//  Created by Jacob Jennings on 10/17/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (SCBackgroundImage)

- (void)scInsertSubview:(UIView *)view atIndex:(NSInteger)index;
- (void)scSendSubviewToBack:(UIView *)view;

@end