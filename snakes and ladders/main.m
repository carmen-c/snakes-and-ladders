//
//  main.m
//  snakes and ladders
//
//  Created by carmen cheng on 2016-11-05.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Player *player = [[Player alloc]init];
        NSLog(@"Welcome user! please type roll or r");
        
        while (player.gameOver ==NO) {
        
//             NSLog(@"Your current position: %d", (int)player.curentSquare);
            
            char input [255];
    
            fgets(input, 255, stdin);
            NSString *command = [NSString stringWithCString:input encoding:NSUTF8StringEncoding];
            command = [command stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSString *rollDice = @"roll";
            NSString *rollDiceShort = @"r";
            
            if ([command rangeOfString:rollDice].location != NSNotFound) {
                [player roll];
            }else if ([command rangeOfString:rollDiceShort].location !=NSNotFound) {
                [player roll];
            }else{
                NSLog(@"dice was not rolled");
            }
            
            
            
            
            
            
        }
    }
    return 0;
}
