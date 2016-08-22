//
//  main.m
//  MaxNumber
//
//  Created by Dan Christal on 2016-08-21.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import <Foundation/Foundation.h>



NSNumber *maximumNumber(NSArray *numbers){
    return [numbers valueForKeyPath:@"@max.self"];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Find maximum number in array...
        NSArray *numbers = @[@1, @99, @76, @1024, @194, @999];
        NSNumber *maxNum = maximumNumber(numbers);
        NSLog(@"Maximum number is..:%@\n", maxNum);
    }
    return 0;
}

