//
//  ChangeCalculator.h
//  Kata4
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChangeCalculator : NSObject

@property int transTotalCents;
@property int cashGivenCents;

- (instancetype)initWithTransactionTotal:(int)transactionTotal CashGiven:(int)cashGiven;

- (NSDictionary *)calculateChange;
@end

NS_ASSUME_NONNULL_END
