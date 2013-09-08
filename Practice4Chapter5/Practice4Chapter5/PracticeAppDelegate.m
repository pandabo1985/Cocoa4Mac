//
//  PracticeAppDelegate.m
//  Practice4Chapter5
//
//  Created by pan dabo on 13-9-8.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "PracticeAppDelegate.h"

@implementation PracticeAppDelegate

@synthesize window = _window;
@synthesize showCount = _showCount;
@synthesize chaContent = _chaContent;

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)countCha:(id)sender {
    NSString *string = [_chaContent stringValue];
    NSString *showContent = [[NSString alloc] init];
   showContent = [NSString stringWithFormat:@"This is only a test' has %ld characters",(unsigned long)[string length]];
//    NSLog(@"%@",showContent);
    [_showCount setStringValue:showContent];
}
@end
