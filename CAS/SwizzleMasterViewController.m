//
//  SwizzleMasterViewController.m
//  RghtCrwd
//
//  Created by Jacob Jennings on 10/17/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "SwizzleMasterViewController.h"
#import "SCAppUtils.h"
#import "JJView.h"

@implementation SwizzleMasterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
  [super viewDidLoad];
  [SCAppUtils customizeNavigationController:self.navigationController];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)setTitle:(NSString *)title {
  JJView *jv = [[JJView alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
  [jv setBackgroundColor:[UIColor clearColor]];
  
  UILabel *l = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
  [l setBackgroundColor:[UIColor clearColor]];
  [l setText:title];
  [l setTextAlignment:UITextAlignmentCenter];
  [l setTextColor:[UIColor whiteColor]];
  [l setShadowColor:[UIColor blackColor]];
  [l setShadowOffset:CGSizeMake(0, 1)];
  [l setFont:[UIFont boldSystemFontOfSize:20]];
  [jv addSubview:l];
  [l release];
  self.navigationItem.titleView = jv;
  [jv release];
}

@end