//
//  MachineController.h
//  Fruitmachine
//
//  Created by Martin de Keijzer on 26-10-10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface MachineController : NSObject {
	IBOutlet NSTextField *RollOneField;
	IBOutlet NSTextField *RollTwoField;
	IBOutlet NSTextField *RollThreeField;
	IBOutlet NSTextField *CreditsField;
	
	IBOutlet NSButton *HoldOneBtn;
	IBOutlet NSButton *HoldTwoBtn;
	IBOutlet NSButton *HoldThreeBtn;
	IBOutlet NSButton *RollBtn;
@public	
	int rollOneValue;
	int rollTwoValue;
	int rollThreeValue;
	int credits;
	bool isRolling;
}

- (IBAction)startRolling:(id)sender;
- (void)runRoller;
- (int)refreshRoll:(id)roll;

@end
