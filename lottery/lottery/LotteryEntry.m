//
//  LotteryEntry.m
//  lottery
//
//  Created by pan dabo on 13-9-2.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

-(void)prepareRandomNumbers
{
    NSAssert(entryDate != nil,@"test");
    firstNumber = ((int)random() % 100) + 1;
    secondNumber = ((int) random() % 100) + 1;
    
}
-(void)setEntryDate:(NSData *)date
{
    entryDate = date;
}
-(NSData *)entryDate
{
    return entryDate;
}
-(int)firstNumber
{
    return  firstNumber;
}
-(int)secondNumber
{
    return secondNumber;
}

-(NSString *)description
{
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setTimeStyle:NSDateFormatterNoStyle];
    [df setDateStyle:NSDateFormatterMediumStyle];
    NSString *result;
    result = [[NSString alloc] initWithFormat:@"%@ = %d and %d",[df stringFromDate:entryDate],firstNumber, secondNumber];
return result;
}

@end
