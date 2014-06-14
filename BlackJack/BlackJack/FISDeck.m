//
//  FISDeck.m
//  BlackJack
//
//  Created by Michael Vilabrera on 6/13/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import "FISDeck.h"


@implementation FISDeck

- (instancetype) init
{
    self = [super init];
    if (self) {
        self.cards = [NSMutableArray array];
    }
    return self;
}

- (FISCard *) drawRandomCard
{
    FISCard *cardToReturn = [[FISCard alloc] init];
    return cardToReturn;
}

@end
