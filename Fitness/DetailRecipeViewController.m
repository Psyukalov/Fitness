//
//  DetailRecipeViewController.m
//  Fitness
//
//  Created by Admin on 09.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "DetailRecipeViewController.h"


@interface DetailRecipeViewController ()

@end


@implementation DetailRecipeViewController

@synthesize caption, nameImage, ingridients, textRecipe;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.navigationItem.title = @"";
    UIBarButtonItem *barButtonBack = [[UIBarButtonItem alloc] init];
    barButtonBack.title = @"";
    self.navigationController.navigationBar.topItem.backBarButtonItem = barButtonBack;
    
}

@end
