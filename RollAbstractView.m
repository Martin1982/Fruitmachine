//
//  RollAbstractView.m
//  Fruitmachine
//
//  Created by Martin de Keijzer on 24-10-10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "RollAbstractView.h"


@implementation RollAbstractView

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
	[self generateRollValue];
	rollValue = [self getRollValue];
    NSString* info = [NSString stringWithFormat:@"%d", rollValue];
	NSPoint point = NSMakePoint(15, 15);
	NSMutableDictionary* font_attributes = [NSMutableDictionary new];
	NSFont* font = [NSFont fontWithName:@"Futura-MediumItalic" size:12];
	[font_attributes setObject:font forKey:NSFontAttributeName];
	
	[info drawAtPoint:point withAttributes:font_attributes];
	
	[font_attributes release];
}

- (void) newRoll {	
	[self generateRollValue];
	rollValue = [self getRollValue];
    NSString* info = [NSString stringWithFormat:@"%d", rollValue];
	NSPoint point = NSMakePoint(15, 15);
	NSMutableDictionary* font_attributes = [NSMutableDictionary new];
	NSFont* font = [NSFont fontWithName:@"Futura-MediumItalic" size:12];
	[font_attributes setObject:font forKey:NSFontAttributeName];
	
	[info drawAtPoint:point withAttributes:font_attributes];
}

- (void) generateRollValue {
	self->rollValue = arc4random() % 4;
}

- (int) getRollValue {
	return self->rollValue;
}

@end
