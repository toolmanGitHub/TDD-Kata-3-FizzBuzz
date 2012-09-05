//
//  BDFizzBuzzTests.m
//  Kata 3 FizzBuzz
//
//  Created by Tim Taylor on 9/5/12.
//  Copyright (c) 2012 Tim Taylor. All rights reserved.
//

#import "BDFizzBuzzTests.h"

@implementation BDFizzBuzzTests

-(void)setUp{

    fizzBuzz = [[BDFizzBuzz alloc] init];
}

-(void)tearDown{
    fizzBuzz = nil;
}

-(void)testThatClassExistsAndCanAllocInit{
    BDFizzBuzz *newFizzBuzz=[[BDFizzBuzz alloc] init];
    STAssertNotNil(newFizzBuzz, @"BDFizzBuzz should return non nil from alloc/init");
}

-(void)testThatClassHasPrintOneToOneHundred{
    STAssertTrue([fizzBuzz respondsToSelector:@selector(printOneToOneHundred)], @"BDFizzBuzz should respond to printOneToOneHundred");
}

-(void)testThatClassPrintOneToOneHundredMethodWorks{
    [fizzBuzz printOneToOneHundred];
}

-(void)testThatClassHasDivisibleByThreeMethod{
    STAssertTrue([fizzBuzz respondsToSelector:@selector(isDivisibleByThree:)], @"BDFizzBuzz should respond to isDivisibleByThree:");
}

-(void)testThatClassReturnsYESForValueDivisibleByThreeMethod{
    BOOL expectedResult=YES;
    BOOL calculatedResult=[fizzBuzz isDivisibleByThree:3];
    STAssertTrue(calculatedResult, @"BDFizzBuzz should return YES.  Expected:  %@, Got:  %@",expectedResult?@"YES":@"NO",calculatedResult?@"YES":@"NO");
}

-(void)testThatClassReturnsNOForValueDivisibleByThreeMethod{
    BOOL expectedResult=NO;
    BOOL calculatedResult=[fizzBuzz isDivisibleByThree:2];
    STAssertTrue(!calculatedResult, @"BDFizzBuzz should return NO.  Expected:  %@, Got:  %@",expectedResult?@"YES":@"NO",calculatedResult?@"YES":@"NO");
}

-(void)testThatClassHasDivisibleByFiveMethod{
    STAssertTrue([fizzBuzz respondsToSelector:@selector(isDivisibleByFive:)], @"BDFizzBuzz should respond to isDivisibleByFive:");
}

-(void)testThatClassReturnsYESForValueDivisibleByFiveMethod{
    BOOL expectedResult=YES;
    BOOL calculatedResult=[fizzBuzz isDivisibleByFive:5];
    STAssertTrue(calculatedResult, @"BDFizzBuzz should return YES.  Expected:  %@, Got:  %@",expectedResult?@"YES":@"NO",calculatedResult?@"YES":@"NO");
}

-(void)testThatClassHasArrayOfFizzBuzzNumbersProperty{
    STAssertTrue([fizzBuzz respondsToSelector:@selector(fizzBuzzNumbers)], @"BDFizzBuzz should have fizzBuzzNumbers property");
}

-(void)testThatFizzBuzzNumbersIsAnArray{
    STAssertTrue([fizzBuzz.fizzBuzzNumbers isKindOfClass:[NSArray class]], @"BDFizzBuzz fizzBuzzNumbers should be an NSArray");
}

-(void)testThatFizzBuzzNumbersReturnsNumbersThatAreDivisibleByThreeWithFizz{
    NSArray *expectedArray=fizzBuzz.fizzBuzzNumbers;
    NSInteger expectedFizzes=27;
    __block NSInteger countedFizzes=0;
    [expectedArray enumerateObjectsUsingBlock:^(NSString *number, NSUInteger idx, BOOL *stop) {
        if ([number isEqualToString:@"Fizz"]) {
            countedFizzes++;
        }
    }];
    STAssertEquals(expectedFizzes, countedFizzes, @"BDFizzBuzz expected %ld fizzes, got %ld",expectedFizzes,countedFizzes);
}

-(void)testThatFizzBuzzNumbersReturnsNumbersThatAreDivisibleByFiveWithBuzz{
    NSArray *expectedArray=fizzBuzz.fizzBuzzNumbers;
    NSInteger expectedBuzzes=14;
    __block NSInteger countedBuzzes=0;
    [expectedArray enumerateObjectsUsingBlock:^(NSString *number, NSUInteger idx, BOOL *stop) {
        if ([number isEqualToString:@"Buzz"]) {
            countedBuzzes++;
        }
    }];
    STAssertEquals(expectedBuzzes, countedBuzzes, @"BDFizzBuzz expected %ld Buzzes, got %ld",expectedBuzzes,countedBuzzes);
}

@end
