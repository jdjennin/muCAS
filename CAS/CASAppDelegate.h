//
//  CASAppDelegate.h
//  CAS
//
//  Created by Jacob Jennings on 10/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CASViewController, IIViewDeckController;

@interface CASAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet CASViewController *viewController;

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@property (nonatomic, retain) IBOutlet UIView *tabOverlay;

@property (nonatomic, retain) IBOutlet UIImageView *tabImage;
// Use another tabImage to fade between tab bar selections for a more natural effect

@property (nonatomic, retain) IIViewDeckController *deck;

+ (IIViewDeckController *)deck;

@end
