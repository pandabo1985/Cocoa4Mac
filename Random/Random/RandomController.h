//
//  RandomController.h
//  Random
//
//  Created by pan dabo on 13-9-1.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RandomController : NSObject
{
    IBOutlet NSTextField *textField;
}

-(IBAction)send:(id)sender;

-(IBAction)generate:(id)sender;

@end
