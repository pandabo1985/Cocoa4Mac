//
//  SpeakLineAppDelegate.h
//  SpeakLine
//
//  Created by pan dabo on 13-9-8.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SpeakLineAppDelegate : NSObject <NSApplicationDelegate>

{
    NSSpeechSynthesizer *_speechSynth;
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *textField;

- (IBAction)stopit:(id)sender;
- (IBAction)sayit:(id)sender;


@end
