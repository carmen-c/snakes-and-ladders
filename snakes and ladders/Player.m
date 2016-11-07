//
//  Player.m
//  snakes and ladders
//
//  Created by carmen cheng on 2016-11-05.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _snake = @{@17:@7, @99:@78, @95:@73, @89:@26, @64:@60};
        _ladder = @{@4:@14, @9:@31, @20:@38, @28:@84, @40:@89, @51:@67, @63:@81};

    }
    return self;
}

-(void) roll{
    
    int diceValue = arc4random_uniform(6) +1;
    NSLog(@"You rolled a %d", diceValue);
    
    
//    Check whether the player has landed on a square corresponding to a key in the dictionary.
    
    NSNumber *nextSquare = [NSNumber numberWithInt:(self.currentSquare+diceValue)];
    if ([[self.snake allKeys] containsObject:nextSquare]){
        NSNumber *value = [self.snake objectForKey:nextSquare];
        self.currentSquare = [value intValue];
        NSLog(@"SNAKESS! you run from a wild snake all the way back to square %d, phew that was close.", (int)self.currentSquare);
        
    }else if ([[self.ladder allKeys] containsObject:nextSquare]){
        NSNumber *value = [self.ladder objectForKey:nextSquare];
        self.currentSquare = [value intValue];
        NSLog(@"you see a ladder and climb up to square %d", (int)self.currentSquare);
        
    }else{
        self.currentSquare = self.currentSquare + diceValue;
        NSLog(@"Your current square is %d", (int)self.currentSquare);
    }
    
//    check to see if our random dice value takes us up to, or past, square 100
    
    if (self.currentSquare >= 100) {
        NSLog(@"You WON, game over.");
        self.gameOver =YES;
    }else{
        self.gameOver =NO;
    }
    
    }

    



@end
