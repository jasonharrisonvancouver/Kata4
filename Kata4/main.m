//
//  main.m
//  Kata4
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChangeCalculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ChangeCalculator *calculator1 = [[ChangeCalculator alloc] initWithTransactionTotal:1787 CashGiven:2000];
        ChangeCalculator *calculator2 = [[ChangeCalculator alloc] initWithTransactionTotal:2623 CashGiven:4000];
        ChangeCalculator *calculator3 = [[ChangeCalculator alloc] initWithTransactionTotal:501 CashGiven:1000];
        
        NSLog(@"%@", [calculator1 calculateChange]);
        NSLog(@"%@", [calculator2 calculateChange]);
        NSLog(@"%@", [calculator3 calculateChange]);
    }
    return 0;
}
