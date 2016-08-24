//
//  main.m
//  MaxNumber
//
//  Created by Dan Christal on 2016-08-21.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import <Foundation/Foundation.h>

NSNumber *maximumNumber(NSArray *numbers){
    
    NSNumber *maxNum = [[NSNumber alloc] init];
    for(NSNumber *number in numbers){
        if (number > maxNum)
            maxNum = number;
    }
    return maxNum;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Find maximum number in array...
        NSArray *numbers = @[@1, @99, @76, @1024, @194, @999];
        NSNumber *maxNum = maximumNumber(numbers);
        if (maxNum != NULL)
            NSLog(@"Maximum number is..:%@\n", maxNum);
        else
            NSLog(@"No numbers found.");
    }
    return 0;
}

