//
//  RollAbstractView.h
//  Fruitmachine
//
//  Created by Martin de Keijzer on 24-10-10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface RollAbstractView : NSView {
@public
	int rollValue;
}

- (void) generateRollValue;
- (void) newRoll;
- (int) getRollValue;

@end
