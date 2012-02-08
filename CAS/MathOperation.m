//
//  MathOperation.m
//  CAS
//
//  Created by Jacob Jennings on 1/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MathOperation.h"
#import "mathomatic.h"

@implementation MathOperation

- (void)sum {
  matho_init();
  NSString *input = @"y=x^2";
  char *output = nil;
  matho_process((char*)[input cStringUsingEncoding:NSUTF8StringEncoding], &output);
  NSString *actualOutput = [NSString stringWithCString:output encoding:NSUTF8StringEncoding];
  NSLog(@"Our output is %@", actualOutput);
  free(output);
  
  input = @"derivative x";
  output = nil;
  matho_process((char*)[input cStringUsingEncoding:NSUTF8StringEncoding], &output);
  actualOutput = [NSString stringWithCString:output encoding:NSUTF8StringEncoding];
  NSLog(@"Our output is %@", actualOutput);
  free(output);
}

@end
