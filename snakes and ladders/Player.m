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
        _curentSquare = 0;
        _gameLogic = @{@4:@14, @17:@7, @9:@31, @20:@38, @28:@84, @40:@89, @51:@67, @63:@81, @99:@78, @95:@73, @89:@26, @64:@60};
    }
    return self;
}

-(void) roll{
    
    int diceValue = arc4random_uniform(6) +1;
    self.curentSquare = self.curentSquare + diceValue;
    
    NSLog(@"You rolled a %d, your current position is on square %d", diceValue, self.curentSquare);

    
}


@end
