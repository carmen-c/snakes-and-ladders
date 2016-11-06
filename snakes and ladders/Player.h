//
//  Player.h
//  snakes and ladders
//
//  Created by carmen cheng on 2016-11-05.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSInteger curentSquare;
@property (nonatomic) NSDictionary* gameLogic;

-(void) roll;

@end
