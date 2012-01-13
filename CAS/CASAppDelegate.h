//
//  CASAppDelegate.h
//  CAS
//
//  Created by Jacob Jennings on 10/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CASViewController;

@interface CASAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet CASViewController *viewController;

@end
