//
//  main.m
//  lottery
//
//  Created by pan dabo on 13-9-2.
//  Copyright (c) 2013年 pan dabo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LotteryEntry.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *array;
        array = [[NSMutableArray alloc] init];
        int i;
        for (i = 0; i < 10; i++) {
            NSNumber *newNumber = [[NSNumber alloc] initWithInt:(i * 3)];
            [array addObject:newNumber];
        }
        for (i = 0; i < 10; i++) {
            NSNumber *numberToPrint = [array objectAtIndex:i];
            NSLog(@"The number at index %d is %@",i,numberToPrint);
        }
        
        NSLog(@"=========");
        
        NSDate *now = [[NSDate alloc] init];
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSDateComponents *weekComponents = [[NSDateComponents alloc] init];
        
        srandom((unsigned)time(NULL));
        
        NSMutableArray *nsarray;
        nsarray = [[NSMutableArray alloc] init];
        
        for (i = 0; i < 10; i++) {
            [weekComponents setWeek:i];
            NSDate *iWeeksFromNow;
            iWeeksFromNow = [cal dateByAddingComponents:weekComponents toDate:now options:0];
            LotteryEntry *newEntry = [[LotteryEntry alloc] init];
            [newEntry prepareRandomNumbers];
            [newEntry setEntryDate:iWeeksFromNow];
            
            [nsarray addObject:newEntry];
        }
        
        for(LotteryEntry *entryToPrint in nsarray){
            NSLog(@"%@",entryToPrint);
        }
        
    }
    return 0;
}

