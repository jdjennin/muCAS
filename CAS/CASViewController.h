//
//  CASViewController.h
//  CAS
//
//  Created by Jacob Jennings on 10/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SwizzleMasterViewController.h"

@class IIViewDeckController;

@interface CASViewController : SwizzleMasterViewController {
  
}

@property (nonatomic, retain) IBOutlet UITextField *inputFunction;
@property (nonatomic, retain) IBOutlet UIWebView *webView;

@end
