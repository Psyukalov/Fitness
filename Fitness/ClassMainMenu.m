//
//  ClassMainMenu.h
//  Fitness
//
//  Created by Admin on 22.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import "ClassMainMenu.h"

@implementation ClassMainMenu {

    NSArray *mainMenuIdentification;
    
}

@synthesize countNewRecipes = _countNewRecipes;
@synthesize countNewExercizes = _countNewExercizes;
@synthesize countNewTips = _countNewTips;
@synthesize countNewPrescriptions = _countNewPrescriptions;

- (NSArray *)getMainMenuItems {
    
    NSArray *mainMenuItems = @[@"РЕЦЕПТЫ",
                               @"УПРАЖНЕНИЯ",
                               @"СОВЕТЫ",
                               @"КОНСУЛЬТАЦИЯ",
                               @"ЛИЧНЫЙ КАБИНЕТ",
                               @"ПОМОЩЬ"];
    
    return mainMenuItems;
    
}

- (NSArray *)getMainMenuIdentification {
    
    mainMenuIdentification =  @[@"cellRecipe",
                                @"cellExersize",
                                @"cellTip",
                                @"cellPrescriptions",
                                @"cellPersonalOffice",
                                @"cellHelp"];
    
    return mainMenuIdentification;
    
}

- (int)countNewRecipes {
    
    return _countNewRecipes;
    
}

- (int)countNewExercizes {
    
    return _countNewExercizes;
    
}

- (int)countNewTips {
    
    return _countNewTips;
    
}

- (int)countNewPrescriptions {
    
    return _countNewPrescriptions;
    
}

- (void)setCountNewRecipes:(int)recipes
         countNewExercizes:(int)exercizes
              countNewTips:(int)tips
     countNewPrescriptions:(int)prescriptions {
    
    _countNewRecipes = recipes;
    _countNewExercizes = exercizes;
    _countNewTips = tips;
    _countNewPrescriptions = prescriptions;
    
}

@end