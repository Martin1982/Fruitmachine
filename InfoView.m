//
//  InfoView.m
//  Fruitmachine
//
//  Created by Martin de Keijzer on 23-10-10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "InfoView.h"


@implementation InfoView

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
    NSString* info = @"Win the amount of points if all \n3 roles show the same symbol";
	NSPoint point = NSMakePoint(15, 15);
	NSMutableDictionary* font_attributes = [NSMutableDictionary new];
	NSFont* font = [NSFont fontWithName:@"Futura-MediumItalic" size:12];
	[font_attributes setObject:font forKey:NSFontAttributeName];
	
	[info drawAtPoint:point withAttributes:font_attributes];
	
	[font_attributes release];
}

@end
