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

    for (NSInteger iCntr=0;iCntr<100;iCntr++){
        [tempNumbers addObject:[self fizzBuzzStringForNumber:(iCntr+1)]];
    }
    return [NSArray arrayWithArray:tempNumbers];
}


-(void)printOneToOneHundred{
    [self.fizzBuzzNumbers enumerateObjectsUsingBlock:^(NSString *fizzBuzzString, NSUInteger idx, BOOL *stop) {
        NSLog(@"%@",fizzBuzzString);
    }];
}

-(BOOL)isDivisibleByThree:(NSInteger)value{
    return value % 3 ==0 ? YES:NO;
   
}

-(BOOL)isDivisibleByFive:(NSInteger)value{
    return value % 5 ==0 ? YES:NO;

}

-(NSString *)fizzBuzzStringForNumber:(NSInteger)number{
    NSMutableString *fizzBuzzString=[NSMutableString stringWithString:@""];
    if ([self isDivisibleByThree:number]) {
        [fizzBuzzString appendString:@"Fizz"];
    }
    if ([self isDivisibleByFive:number]) {
        [fizzBuzzString appendString:@"Buzz"];
    }
    if ([fizzBuzzString isEqualToString:@""]) {
        fizzBuzzString=[NSMutableString stringWithFormat:@"%ld",number];
    }
    
    return fizzBuzzString;

}

@end
