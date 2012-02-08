//
//  UIColor+Hex.h
//  socializeit
//
//  Created by Jacob Jennings on 1/27/12.
//  Copyright (c) 2012 Twin Engine Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

+ (UIColor *)colorWithHexString:(NSString *)hex;
+ (UIColor *)colorWithRGBHex:(UInt32)hex;

@end
