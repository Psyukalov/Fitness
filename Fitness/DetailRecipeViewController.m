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
    
    _scrollView.layer.cornerRadius = 6;
    _scrollView.layer.shadowColor = [[UIColor blackColor] CGColor];
    _scrollView.layer.shadowRadius = 6;
    _scrollView.layer.shadowOpacity = 0.5;
    _scrollView.layer.shadowOffset = CGSizeMake(0, 8);
    _scrollView.clipsToBounds = YES;    
    
    _labelCaption.text = caption;
    _imageRecipe.image = [UIImage imageNamed:nameImage];
    
}

@end
