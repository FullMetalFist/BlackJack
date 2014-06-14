//
//  FISPlayingCard.h
//  BlackJack
//
//  Created by Michael Vilabrera on 6/13/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FISCard.h"

@interface FISPlayingCard : FISCard

@property (strong, nonatomic) NSString *suit;
@property (strong, nonatomic) NSNumber *rank;

- (instancetype) init;
- (instancetype) initWithSuit:(NSString *)suit rank:(NSNumber *)rank;

@end
