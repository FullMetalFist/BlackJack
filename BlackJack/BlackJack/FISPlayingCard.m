//
//  FISPlayingCard.m
//  BlackJack
//
//  Created by Michael Vilabrera on 6/13/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FISPlayingCard.h"

@implementation FISPlayingCard

@synthesize rank = _rank;

- (instancetype) init
{
    self = [self initWithSuit:@"" rank:@0];
    return self;
}

- (instancetype) initWithSuit:(NSString *)suit rank:(NSNumber *)rank
{
    self = [super init];
    if (self) {
        [self setRank:rank];
        [self setSuit:suit];
    }
    return self;
}

+ (NSArray *)validSuits
{
    return @[@"♠️",@"♥️",@"♣️",@"♦️"];
}

+ (NSArray *)validRanks
{
    return @[@0,@1,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11,@12,@13];        // A = 1, K = 13
}

- (void) setSuit:(NSString *)suit
{
    if ([[FISPlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    } else {
        _suit = @"";
    }
}

- (void) setRank:(NSNumber *)rank
{
    if ([[FISPlayingCard validRanks] containsObject:rank]) {
        _rank = rank;
    } else {
        _rank = @0;
    }
}

@end
