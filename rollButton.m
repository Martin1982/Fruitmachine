//
//  rollButton.m
//  Fruitmachine
//
//  Created by Martin de Keijzer on 23-10-10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "rollButton.h"
#import "RollOneView.h"
#import "RollTwoView.h"
#import "RollThreeView.h"

@implementation rollButton

- (IBAction)doRoll:(id)pId;
{
	RollOneView *rollOne = [[RollOneView alloc] init];
	RollTwoView *rollTwo = [[RollTwoView alloc] init];
	RollThreeView *rollThree = [[RollThreeView alloc] init];
	[rollOne newRoll];
	[rollTwo newRoll];
	[rollThree newRoll];
	if ([rollOne getRollValue] == [rollTwo getRollValue]) {
		if ( [rollOne getRollValue] == [rollThree getRollValue]) {
			NSLog(@"YOU WIN x2!");	
		} else {
			NSLog(@"YOU WIN X1!");
		}
	} else {
		NSLog(@"You lose.....");
	}
	[rollOne release];
	[rollTwo release];
	[rollThree release];

}

@end
