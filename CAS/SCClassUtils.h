//
//  SCClassUtils.h
//  RghtCrwd
//
//  Created by Jacob Jennings on 10/17/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import </usr/include/objc/objc-class.h>
#import <Foundation/Foundation.h>

@interface SCClassUtils : NSObject
{
}

+ (void)swizzleSelector:(SEL)orig ofClass:(Class)c withSelector:(SEL)new;

@end