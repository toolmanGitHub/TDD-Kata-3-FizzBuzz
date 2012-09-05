//
//  BDFizzBuzz.h
//  Kata 3 FizzBuzz
//
//  Created by Tim Taylor on 9/5/12.
//  Copyright (c) 2012 Tim Taylor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BDFizzBuzz : NSObject
@property (nonatomic, readonly,strong) NSArray *fizzBuzzNumbers;


-(void)printOneToOneHundred;

-(BOOL)isDivisibleByThree:(NSInteger)value;
-(BOOL)isDivisibleByFive:(NSInteger)value;

-(NSString *)fizzBuzzStringForNumber:(NSInteger)number;

@end
