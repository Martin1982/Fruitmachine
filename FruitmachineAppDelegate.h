//
//  FruitmachineAppDelegate.h
//  Fruitmachine
//
//  Created by Martin de Keijzer on 23-10-10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface FruitmachineAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
