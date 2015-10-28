//
//  ClassMainMenu.h
//  Fitness
//
//  Created by Admin on 22.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassMainMenu : NSObject

@property (nonatomic, readonly) int countNewRecipes;
@property (nonatomic, readonly) int countNewExercizes;
@property (nonatomic, readonly) int countNewTips;
@property (nonatomic, readonly) int countNewPrescriptions;

- (NSArray *)getMainMenuItems;
- (NSArray *)getMainMenuIdentification;
- (void)setCountNewRecipes:(int)recipes
         countNewExercizes:(int)exercizes
              countNewTips:(int)tips
     countNewPrescriptions:(int)prescriptions;

@end
