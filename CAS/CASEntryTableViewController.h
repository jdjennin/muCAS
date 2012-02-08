//
//  CASEntryTableViewController.h
//  CAS
//
//  Created by Jacob Jennings on 2/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CASEntryTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
  
}

@property (nonatomic, retain) NSMutableArray *tableData;
@property (nonatomic, retain) NSMutableArray *sections;

@end
