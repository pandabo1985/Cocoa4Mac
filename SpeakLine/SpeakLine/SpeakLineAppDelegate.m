//
//  SpeakLineAppDelegate.m
//  SpeakLine
//
//  Created by pan dabo on 13-9-8.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "SpeakLineAppDelegate.h"

@implementation SpeakLineAppDelegate

@synthesize window = _window;
@synthesize textField = _textField;

-(id)init
{
    self = [super init];
    if (self) {
        NSLog(@"init");
        _speechSynth = [[NSSpeechSynthesizer alloc] initWithVoice:nil];
    }
    return  self;
}


- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)stopit:(id)sender {
    NSLog(@"stopping");
    [_speechSynth stopSpeaking];
}

- (IBAction)sayit:(id)sender {
  
    
    NSString *string = [_textField stringValue];
    if ([string length ]== 0) {
        NSLog(@"string from %@ is of zero-length", _textField);
        return;
    }
    
    [_speechSynth startSpeakingString: string];
    NSLog(@"Have started to say: %@",string);
    
}
@end
