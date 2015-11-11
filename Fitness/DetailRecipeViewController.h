//
//  DetailRecipeViewController.h
//  Fitness
//
//  Created by Admin on 09.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "ClassRecipe.h"


@interface DetailRecipeViewController : UIViewController

@property (nonatomic) NSString *caption;
@property (nonatomic) NSString *nameImage;
@property (nonatomic) NSString *ingridients;
@property (nonatomic) NSString *textRecipe;

@end