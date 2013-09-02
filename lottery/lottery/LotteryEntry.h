//
//  LotteryEntry.h
//  lottery
//
//  Created by pan dabo on 13-9-2.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject

{
    NSDate *entryDate;
    int firstNumber;
    int secondNumber;
}

-(void)prepareRandomNumbers;
-(void)setEntryDate:(NSDate *)date;
-(NSData *)entryDate;
-(int)firstNumber;
-(int)secondNumber;

@end
