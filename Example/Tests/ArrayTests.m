//
//  ArrayTests.m
//  FoundationPlus
//
//  Created by Jamie Evans on 2015-03-16.
//  Copyright (c) 2015 Jamie Riley Evans. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FoundationPlus/NSArray+Function.h>
#import <FoundationPlus/NSArray+Allocation.h>

SPEC_BEGIN(ArrayTests)

describe(@"NSArray+Allocation: ", ^{
    
    __block NSArray *resultingArray = nil;
    
    context(@"when creating an array of NSNumbers from 0 to 10 ", ^{
        
        beforeEach(^{
            
            resultingArray = [NSArray arrayOfSize:11
                                withCreationBlock:^id(NSUInteger index)
                              {
                                  return @(index);
                              }];
        });
        
        it(@"should contain 11 objects of the NSNumber type ", ^{
            
            [[[[resultingArray subarrayWithObjectsOfClass:[NSNumber class]] should] have:11] items];
        });
        
        context(@"and creating an array of strings from those numbers ", ^{
            
            beforeEach(^{
                
                resultingArray = [resultingArray arrayWithCreationBlock:^id(NSNumber *object)
                {
                    return object.stringValue;
                }];
            });
            
            it(@"should contain 11 objects of the NSString type ", ^{
                
                [[[[resultingArray subarrayWithObjectsOfClass:[NSString class]] should] have:11] items];
            });
        });
    });
});

SPEC_END
