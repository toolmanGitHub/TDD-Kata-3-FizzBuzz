//
//  main.m
//  Kata 3 FizzBuzz
//
//  Created by Tim Taylor on 9/5/12.
//  Copyright (c) 2012 Tim Taylor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BDFizzBuzz.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        BDFizzBuzz *fizzBuzz=[[BDFizzBuzz alloc] init];
        [fizzBuzz printOneToOneHundred];
    }
    return 0;
}

