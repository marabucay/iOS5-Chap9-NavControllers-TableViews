//
//  BIDFirstLevelController.m
//  Nav
//
//  Created by Maria Alice C. Lim on 9/16/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "BIDFirstLevelController.h"
#import "BIDSecondLevelViewController.h"

@implementation BIDFirstLevelController
@synthesize controllers;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"First Level";
    NSMutableArray *array = [[NSMutableArray alloc] init];
    self.controllers = array;
}

- (void)viewDidUnload {
    [super viewDidUnload];
    self.controllers = nil;
}

#pragma mark -
#pragma mark Table Data Source Methods
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return [self.controllers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *FirstLevelCell = @"FirstLevelCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             FirstLevelCell];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier: FirstLevelCell];
    }
    // Configure the cell
    NSUInteger row = [indexPath row];
    BIDSecondLevelViewController *controller =
    [controllers objectAtIndex:row];
    cell.textLabel.text = controller.title;
    cell.imageView.image = controller.rowImage;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}
#pragma mark -
#pragma mark Table View Delegate Methods
- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSUInteger row = [indexPath row];
    BIDSecondLevelViewController *nextController = [self.controllers
                                                    objectAtIndex:row];
    [self.navigationController pushViewController:nextController
                                         animated:YES];
}
@end
