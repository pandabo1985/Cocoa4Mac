//
//  PracticeAppDelegate.h
//  Practice4Chapter5
//
//  Created by pan dabo on 13-9-8.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PracticeAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *chaContent;
- (IBAction)countCha:(id)sender;
@property (assign) IBOutlet NSTextField *showCount;

@end
