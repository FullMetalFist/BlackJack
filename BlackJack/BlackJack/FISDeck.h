//
//  FISDeck.h
//  BlackJack
//
//  Created by Michael Vilabrera on 6/13/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISCard.h"

@interface FISDeck : NSObject

@property (strong, nonatomic) NSMutableArray *cards;        // the cards in the deck

- (instancetype)init;

- (FISCard *)drawRandomCard;             // should return a random card, and remove that card from the cards array

@end
