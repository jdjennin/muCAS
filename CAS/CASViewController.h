//
//  CASViewController.h
//  CAS
//
//  Created by Jacob Jennings on 10/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CASViewController : UIViewController {
  
}

@property (nonatomic, retain) IBOutlet UITextField *inputFunction;
@property (nonatomic, retain) IBOutlet UIWebView *webView;

- (IBAction)derive:(id)sender;

@end
