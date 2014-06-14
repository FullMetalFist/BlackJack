//
//  FISPlayingCardDeck.m
//  BlackJack
//
//  Created by Michael Vilabrera on 6/13/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FISPlayingCardDeck.h"

@implementation FISPlayingCardDeck

- (instancetype) init
{
    self = [super init];
    if (self) {
        self.cards = [FISPlayingCardDeck makeTheDeckWithCards];
    }
    return self;
}

+ (NSMutableArray *)makeTheDeckWithCards
{
    FISPlayingCard *theCardToPutIn = [[FISPlayingCard alloc] init];
    NSArray *theSuits = @[@"♠️",@"♥️",@"♣️",@"♦️"];
    NSMutableArray *theArrayToGiveBack = [NSMutableArray array];
    for (NSInteger i = 1; i < 14; i++) {
        for (NSString *someSuit in theSuits) {
            theCardToPutIn = [FISPlayingCard new];
            theCardToPutIn.suit = someSuit;
            theCardToPutIn.rank = [NSNumber numberWithInteger:i];
            [theArrayToGiveBack addObject:theCardToPutIn];
        }
    }
    return theArrayToGiveBack;
}

@end
