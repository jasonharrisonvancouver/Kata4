//
//  ChangeCalculator.m
//  Kata4
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "ChangeCalculator.h"

@implementation ChangeCalculator
- (instancetype)initWithTransactionTotal:(int)transactionTotal CashGiven:(int)cashGiven{
    
    self = [super self];
    if(self){
        _transTotalCents = transactionTotal;
        _cashGivenCents  = cashGiven;
    }
    return self;
}


int getNumberOfCurrencyForAmount(int currencyInCents, int *amountInCents){
    int num = 0;
    
    while(*amountInCents >= currencyInCents){
        num++;
        *amountInCents -= currencyInCents;
    }
    return num;
}

- (NSDictionary *)calculateChange{
    
    int numTwenties, numTens, numFives, numToonies, numLoonies, numQuarters,
    numDimes, numNickels, numPennies = 0;
    
    int changeDueCents = _cashGivenCents - _transTotalCents;
    
    numTwenties = getNumberOfCurrencyForAmount(2000, &changeDueCents);
    numTens = getNumberOfCurrencyForAmount(1000, &changeDueCents);
    numFives = getNumberOfCurrencyForAmount(500, &changeDueCents);
    numToonies = getNumberOfCurrencyForAmount(200, &changeDueCents);
    numLoonies = getNumberOfCurrencyForAmount(100, &changeDueCents);
    numQuarters = getNumberOfCurrencyForAmount(25, &changeDueCents);
    numDimes = getNumberOfCurrencyForAmount(10, &changeDueCents);
    numNickels = getNumberOfCurrencyForAmount(5, &changeDueCents);
    numPennies = changeDueCents;

    
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
    
    
    
    
    if(numTwenties > 0){
        NSNumber *numberObject = [NSNumber numberWithInt:numTwenties];
        [dictionary setObject:numberObject forKey:@"twentyDollar"];
    }
    
    if(numTens > 0){
        NSNumber *numberObject = [NSNumber numberWithInt:numTens];
        [dictionary setObject:numberObject forKey:@"tenDollar"];
    }
    
    if(numFives > 0){
        NSNumber *numberObject = [NSNumber numberWithInt:numFives];
        [dictionary setObject:numberObject forKey:@"giveDollar"];
    }
    
    if(numToonies > 0){
        NSNumber *numberObject = [NSNumber numberWithInt:numToonies];
        [dictionary setObject:numberObject forKey:@"twoDollar"];
    }
    
    if(numLoonies > 0){
        NSNumber *numberObject = [NSNumber numberWithInt:numLoonies];
        [dictionary setObject:numberObject forKey:@"dollar"];
    }
    
    if(numQuarters > 0){
        NSNumber *numberObject = [NSNumber numberWithInt:numQuarters];
        [dictionary setObject:numberObject forKey:@"quarter"];
    }
    
    if(numDimes > 0){
        NSNumber *numberObject = [NSNumber numberWithInt:numDimes];
        [dictionary setObject:numberObject forKey:@"dime"];
    }
    
    if(numNickels > 0){
        NSNumber *numberObject = [NSNumber numberWithInt:numNickels];
        [dictionary setObject:numberObject forKey:@"nickel"];
    }
    
    if(numPennies > 0){
        NSNumber *numberObject = [NSNumber numberWithInt:numPennies];
        [dictionary setObject:numberObject forKey:@"penny"];
    }
    

    return dictionary;
}
@end
