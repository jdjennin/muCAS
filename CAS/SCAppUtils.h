//
//  SCAppUtils.h
//  RghtCrwd
//
//  Created by Jacob Jennings on 10/17/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kSCNavBarImageTag 6183746
#define kSCNavBarColor [UIColor colorWithRed:0.54 green:0.18 blue:0.03 alpha:1.0]

@interface SCAppUtils : NSObject
{
}

+ (void)customizeNavigationController:(UINavigationController *)navController;

@end

