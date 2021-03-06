//
//  CASViewController.m
//  CAS
//
//  Created by Jacob Jennings on 10/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CASViewController.h"
#import "MathOperation.h"
#import "CASAppDelegate.h"
#import "IIViewDeckController.h"

@implementation CASViewController

@synthesize inputFunction, webView;

- (void)dealloc {
  webView.delegate = nil;
  self.webView = nil;
  self.inputFunction = nil;
  [super dealloc];
}

- (void)didReceiveMemoryWarning
{
  // Releases the view if it doesn't have a superview.
  [super didReceiveMemoryWarning];
  
  // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
  [super viewDidLoad];
  
  self.title = @"Solver";
  
//  NSString *body = @"<!DOCTYPE html><html><head>  <title>MathML in HTML5</title>  </head>  <body>    <h1>MathML in HTML5</h1>    <math display=\"block\">  <mrow>  <munderover>  <mo>&Sum;</mo>  <mrow>  <mi>i</mi>  <mo>=</mo>  <mn>1</mn>  </mrow>  <mi>N</mi>  </munderover>  <msub>  <mi>a</mi>  <mi>i</mi>  </msub>  </mrow>  </math>    </body>  </html>";
//  [self.webView loadHTMLString:body baseURL:nil];
  
  MathOperation *op = [[MathOperation alloc] init];
  [op sum];
  [op release];
  
  UISwipeGestureRecognizer *g = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swiped:)];
  [g setDirection:UISwipeGestureRecognizerDirectionRight];
  [self.view addGestureRecognizer:g];
  [g release];
}

- (void)swiped:(id)sender {
  IIViewDeckController *d = [CASAppDelegate deck];
  [d toggleLeftViewAnimated:YES];
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

@end
