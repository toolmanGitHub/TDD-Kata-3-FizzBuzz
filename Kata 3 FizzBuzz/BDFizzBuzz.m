//
//  BDFizzBuzz.m
//  Kata 3 FizzBuzz
//
//  Created by Tim Taylor on 9/5/12.
//  Copyright (c) 2012 Tim Taylor. All rights reserved.
//

#import "BDFizzBuzz.h"

@implementation BDFizzBuzz

-(NSArray *)fizzBuzzNumbers{
    NSMutableArray *tempNumbers=[NSMutableArray arrayWithCapacity:100];
    NSMutableString *fizzBuzzString=nil;
    for (NSInteger iCntr=0;iCntr<100;iCntr++){
        fizzBuzzString=[NSMutableString stringWithString:@""];
        if ([self isDivisibleByThree:(iCntr+1)]) {
            [fizzBuzzString appendString:@"Fizz"];
        }
        if ([self isDivisibleByFive:(iCntr+1)]) {
            [fizzBuzzString appendString:@"Buzz"];
        }
        if ([fizzBuzzString isEqualToString:@""]) {
            fizzBuzzString=[NSMutableString stringWithFormat:@"%ld",(iCntr+1)];
        }
        [tempNumbers addObject:fizzBuzzString];
    }
    return [NSArray arrayWithArray:tempNumbers];
}


-(void)printOneToOneHundred{
    for (NSInteger iCntr=0; iCntr<100; iCntr++){
        NSLog(@"%ld",iCntr+1);
    }
}

-(BOOL)isDivisibleByThree:(NSInteger)value{
    return value % 3 ==0 ? YES:NO;
   
}

-(BOOL)isDivisibleByFive:(NSInteger)value{
    return value % 5 ==0 ? YES:NO;

}

@end
