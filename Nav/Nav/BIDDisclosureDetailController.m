//
//  BIDDisclosureDetailController.m
//  Nav
//
//  Created by Maria Alice C. Lim on 9/16/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "BIDDisclosureDetailController.h"

@implementation BIDDisclosureDetailController
@synthesize label;
@synthesize message;

- (void)viewWillAppear:(BOOL)animated {
    label.text = message;
    [super viewWillAppear:animated];
}
- (void)viewDidUnload {
    self.label = nil;
    self.message = nil;
    [super viewDidUnload];
}
@end
