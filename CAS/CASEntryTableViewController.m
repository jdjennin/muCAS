//
//  CASEntryTableViewController.m
//  CAS
//
//  Created by Jacob Jennings on 2/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CASEntryTableViewController.h"

@implementation CASEntryTableViewController

@synthesize tableData, sections;

- (void)dealloc {
  self.tableData = nil;
  self.sections = nil;
  [super dealloc];
}

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

- (void)viewDidLoad
{
  [super viewDidLoad];
  // Do any additional setup after loading the view from its nib.
  self.tableData = [NSMutableArray arrayWithObjects:[NSArray arrayWithObjects:@"Expressions", @"Greek", @"Matrix", @"Operators", @"Symbols", nil], [NSArray arrayWithObjects:@"Equation Spaces", @"Stored Variables", nil], [NSArray arrayWithObjects:@"Copy Current", @"Paste", nil], nil];
  self.sections = [NSMutableArray arrayWithObjects:@"Math Entry", @"Memory", @"Clipboard", nil];
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

#pragma mark - UITableViewDataSource methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return self.tableData.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return [[self.tableData objectAtIndex:section] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  static NSString *ident = @"Cell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ident];
  if (cell == nil) {
    cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ident] autorelease];
  }
  
  id object = [[self.tableData objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
  [cell.textLabel setText:object];
  
  return cell;
}

#pragma mark - UITableViewDataSource methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
  UIView *header = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 20)];
  [header setBackgroundColor:[UIColor colorWithHexString:@"f1b9ff"]];
  
  UILabel *l = [[UILabel alloc] initWithFrame:CGRectMake(10, 1, 320, 20)];
  [l setBackgroundColor:[UIColor clearColor]];
  [l setTextColor:[UIColor whiteColor]];
  [l setFont:[UIFont boldSystemFontOfSize:17]];
  NSString *s = [self.sections objectAtIndex:section];
  [l setText:s];
  [header addSubview:l];
  [l release];
  
  return [header autorelease];
}

@end
