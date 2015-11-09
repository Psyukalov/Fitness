//
//  RecipeTableViewController.h
//  Fitness
//
//  Created by Admin on 06.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "MenuTableViewCell.h"
#import "ClassParserJSON.h"
#import "ClassRecipe.h"
#import "DetailRecipeViewController.h"


@interface RecipeTableViewController : UITableViewController

@property (nonatomic, readwrite) int menuType;
@property (strong, nonatomic) IBOutlet UITableView *tableRecipe;

@end