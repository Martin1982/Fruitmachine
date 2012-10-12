//
//  MachineController.m
//  Fruitmachine
//
//  Created by Martin de Keijzer on 26-10-10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MachineController.h"


@implementation MachineController

- (void)initWithXib
{
	isRolling = FALSE;
	[CreditsField setIntValue:10];
	
	[RollOneField setIntValue:0];
	[RollTwoField setIntValue:0];
	[RollThreeField setIntValue:0];
	[CreditsField setIntValue:10];
}

- (IBAction)startRolling:(id)sender
{
	[self runRoller];
}

- (void)runRoller
{
	[RollBtn setTitle:@"Rolling..."];
	
	rollOneValue = [self refreshRoll:RollOneField];
	rollTwoValue = [self refreshRoll:RollTwoField];
	rollThreeValue = [self refreshRoll:RollThreeField];
	
	[CreditsField setIntValue:self->credits - 1];
	
	int addcredits = 0;
	if (rollOneValue == rollTwoValue) {
		[RollOneField setTextColor:[NSColor greenColor]];
		[RollTwoField setTextColor:[NSColor greenColor]];
		addcredits = rollOneValue; 
		if (rollOneValue == rollThreeValue) {
			[RollThreeField setTextColor:[NSColor greenColor]];
			addcredits = rollOneValue * 2;
		}
	}
	[CreditsField setIntValue:self->credits + addcredits];
	isRolling = FALSE;
	[RollBtn setTitle:@"Roll"];
}

- (int)refreshRoll:(id)roll
{
	[roll setTextColor:[NSColor blackColor]];
	int rollValue = random() % 6;
	[roll setIntValue:rollValue];
	return rollValue;
}

@end
