//
//  FISPlayingCardDeck.h
//  BlackJack
//
//  Created by Michael Vilabrera on 6/13/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FISDeck.h"
#import "FISPlayingCard.h"

@interface FISPlayingCardDeck : FISDeck

- (instancetype)init;       // PlayingCardDeck's init method should create an unshuffled deck of all 52 playing cards and initialize the cards mutable array with the 52 cards.

+ (NSMutableArray *)makeTheDeckWithCards;

@end
