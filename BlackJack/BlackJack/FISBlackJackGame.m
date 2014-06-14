//
//  FISBlackJackGame.m
//  BlackJack
//
//  Created by Michael Vilabrera on 6/13/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FISBlackJackGame.h"
#import "FISPlayingCardDeck.h"

@implementation FISBlackJackGame
@synthesize handScore = _handScore;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.handScore = @0;
        self.hand = [NSMutableArray array];
        self.thePlayingDeckArray = [FISPlayingCardDeck makeTheDeckWithCards];
        self.playingCardDeck = [[FISPlayingCardDeck alloc] init];
        self.isDealt = NO;
        self.isBusted = NO;
    }
    return self;
}

- (void) deal
{
    self.isDealt = YES;
    
    NSArray *randomIndexes = [self generateRandom];
    // take numbers from randomIndexes from our playingDeckArray
    NSInteger firstIndex = [[randomIndexes objectAtIndex:0] integerValue];
    NSInteger secondIndex = [[randomIndexes objectAtIndex:1] integerValue];
    [self.hand addObject:[self.thePlayingDeckArray objectAtIndex:firstIndex]];
    [self.thePlayingDeckArray removeObjectAtIndex:firstIndex];
    [self.hand addObject:[self.thePlayingDeckArray objectAtIndex:secondIndex]];
    [self.thePlayingDeckArray removeObjectAtIndex:secondIndex];
    // add the cards taken from playingDeckArray to self.hand
//    FISPlayingCard *firstCard = [self.hand objectAtIndex:0];
//    FISPlayingCard *secondCard = [self.hand objectAtIndex:1];
//    NSInteger theScore = [firstCard.rank integerValue] + [secondCard.rank integerValue];
//    self.handScore = @(theScore);
}

- (NSMutableArray *)generateRandom
{
    NSMutableArray *randomIndexes = [NSMutableArray array];
    NSInteger index = 0;
    for (NSInteger i = 0; i < 2; i ++) {
        index = arc4random() % [self.thePlayingDeckArray count];
        [randomIndexes addObject:@(index)];                         // potential bug - if #s are the same-
    }
    
    return randomIndexes;
}

- (void) hit
{
    
    if (self.isDealt && !self.isBusted) {
        
        NSInteger index = 0;
        index = arc4random() % [self.thePlayingDeckArray count];
        [self.hand addObject:[self.thePlayingDeckArray objectAtIndex:index]];
        [self.thePlayingDeckArray removeObjectAtIndex:index];
        FISPlayingCard *theLatestCard = [self.hand lastObject];
        NSInteger theScore = [theLatestCard.rank integerValue] + [self.handScore integerValue];
        self.handScore = @(theScore);
        [self checkisBusted];
    }
}

- (BOOL)checkisBusted
{
    NSInteger score = 0;
    for (FISPlayingCard *theCard in self.hand)
    {
        score += [theCard.rank integerValue];
    }
    if (score > 21) {
        self.isBusted = YES;
    }
    return self.isBusted;
}

@end
