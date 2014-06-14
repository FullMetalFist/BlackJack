//
//  FISCard.h
//  BlackJack
//
//  Created by Michael Vilabrera on 6/13/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISCard : NSObject

@property (nonatomic) BOOL matched;
@property (nonatomic) BOOL isFaceUp;



- (instancetype) init;

//- (NSString *)description;


@end
