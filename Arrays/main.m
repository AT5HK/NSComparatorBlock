//
//  main.m
//  Arrays
//
//  Created by Auston Salvana on 7/7/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *arrayOfStuff = @[
                                  @"eeeeeAAbfdf",
                                  @"Everything",
                                  @"news to me",
                                  @"timepiece",
                                  @"egg",
                                  @"eggs",
                                  @"paper",
                                  @"e",
                                  @"facebook",
                                  @"painting",
                                  @"231 thurlow st",
                                  @"99 bottles"
                                  ];
        
        NSArray *sortedArrayOfString = [arrayOfStuff sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            
            return [(NSString *)obj1 compare:(NSString *)obj2 options:NSNumericSearch];
        }];
        
        NSArray *sortLength = [arrayOfStuff sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            if ([obj1 length] > [obj2 length]) {
                return (NSComparisonResult)obj1;
            }
            return (NSComparisonResult)obj2;
        }];
    
    }
    return 0;
}
