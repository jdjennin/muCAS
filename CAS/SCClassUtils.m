//
//  SCClassUtils.m
//  RghtCrwd
//
//  Created by Jacob Jennings on 10/17/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "SCClassUtils.h"

@implementation SCClassUtils

+ (void)swizzleSelector:(SEL)orig ofClass:(Class)c withSelector:(SEL)new;
{
  Method origMethod = class_getInstanceMethod(c, orig);
  Method newMethod = class_getInstanceMethod(c, new);
  
  if (class_addMethod(c, orig, method_getImplementation(newMethod),
                      method_getTypeEncoding(newMethod)))
  {
    class_replaceMethod(c, new, method_getImplementation(origMethod),
                        method_getTypeEncoding(origMethod));
  }
  else
  {
    method_exchangeImplementations(origMethod, newMethod);
  }
}

@end