//
//  RandomController.m
//  Random
//
//  Created by pan dabo on 13-9-1.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "RandomController.h"

@implementation RandomController




-(IBAction)send:(id)sender
{
    int generated;
    generated = (int)(random() % 100) +1;
    NSLog(@"generated = %d",generated);
    [textField setIntegerValue:generated];
}

-(IBAction)generate:(id)sender
{
    srandom((unsigned) time(NULL));
    [textField setStringValue:@"Generator seeded"];
}

-(void)awakeFromNib
{
    NSData *now;
    now = [NSDate date];
    [textField setObjectValue:now];
}

@end
