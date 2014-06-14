//
//  CardSpec.m
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright 2014 Al Tyus. All rights reserved.
//

#import "Specta.h"
#import "FISCard.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "KIF.h"
#import "Swizzlean.h"

SpecBegin(FISCard)

describe(@"Card", ^{
    __block FISCard *card;
    
    beforeAll(^{
        card = [[FISCard alloc] init];
    });
    
    it(@"exists", ^{
        expect(card).notTo.beNil();
    });
    
//    describe(@"description", ^{
//        it(@"should return an empty string and be implemented in Card subclass",^{
//            expect(card.description).to.equal(@"");
//        });
//    });
    
    describe(@"isFaceUp", ^{
        it(@"should return YES if the card is collectible",^{
            expect(card.isFaceUp).to.equal(0);
        });
    });
    
});

SpecEnd
