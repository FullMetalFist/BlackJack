//
//  FISBlackJackGame.h
//  BlackJack
//
//  Created by Michael Vilabrera on 6/13/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISPlayingCardDeck.h"

@interface FISBlackJackGame : NSObject

@property (strong, nonatomic) FISPlayingCardDeck *playingCardDeck;      // returns the playingCardDeck in use
@property (strong, nonatomic) NSNumber *handScore;                      // returns the total value of cards in the hand.
@property (strong, nonatomic) NSMutableArray *hand;                     // returns the cards in the hand.
@property (nonatomic) BOOL isBusted;                                    // returns YES if handScore is more than 21
@property (nonatomic) BOOL isBlackjack;                                 // returns YES if handScore is 21

@property (strong, nonatomic) NSMutableArray *thePlayingDeckArray;                 // array for storing the playing deck values
@property (nonatomic) BOOL isDealt;

- (instancetype) init;      // should initialize playingCardDeck with a new deck and set score and isBusted to default values

- (void)deal;               // should deal 2 new cards and add the cards to the hand
- (void)hit;                // should deal one additional card, and add the card to the hand.


@end
