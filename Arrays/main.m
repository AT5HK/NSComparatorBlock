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
        NSLog(@"By numeric: %@", sortedArrayOfString);
        NSArray *sortLength = [arrayOfStuff sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            return (NSComparisonResult)[obj1 length] < [obj2 length];
        }];
        NSLog(@"By Length: %@", sortLength);
        
            NSArray *lastChar = [arrayOfStuff sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
                NSString *character1 = [obj1 substringFromIndex:[obj1 length] -1];
                NSString *character2 = [obj2 substringFromIndex:[obj2 length] -1];
                return [character1 compare:character2 options:NSNumericSearch];
            }];
        NSLog(@"By last charachter alphabetical: %@", lastChar);
        
        NSArray *sortByE = [arrayOfStuff sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
            NSArray *eArray =[obj1 componentsSeparatedByString:@"e"];
            NSArray *eArray2 = [obj2 componentsSeparatedByString:@"e"];
            
            return (NSComparisonResult)[eArray count] < [eArray2 count];
        }];
        NSLog(@"By number of Es: %@", sortByE);
    }
    return 0;
}
