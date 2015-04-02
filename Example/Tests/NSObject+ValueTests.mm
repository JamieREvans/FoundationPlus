//
//  ArrayTests.m
//  FoundationPlus
//
//  Created by Jamie Evans on 2015-03-16.
//  Copyright (c) 2015 Jamie Riley Evans. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FoundationPlus/NSObject+Values.h>

#define SAMPLE_STRING @"Sample String For Test"

@interface NSObject ()

@property (nonatomic) NSString *fakeStringProperty;

@end

SPEC_BEGIN(NSObjectValuesTest)

describe(@"NSArray+Allocation: ", ^{
    
    __block NSObject *subject = nil;
    
    beforeEach(^{
        
        subject = [NSObject new];
    });
    
    context(@"when setting a value to fakeStringProperty", ^{
        
        beforeEach(^{
            
            [subject setValue:SAMPLE_STRING forSelector:@selector(fakeStringProperty)];
        });
        
        it(@"the getter should equal SAMPLE_STRING", ^{
            
            [[[subject valueForSelector:@selector(fakeStringProperty)] should] equal:SAMPLE_STRING];
        });
    });
});

SPEC_END