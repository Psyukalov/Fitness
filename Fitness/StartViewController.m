//
//  StartViewController.m
//  Fitness
//
//  Created by Admin on 10.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "StartViewController.h"


@interface StartViewController ()

@end


@implementation StartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //
    _buttonCalories.layer.cornerRadius = _buttonCalories.frame.size.height / 2;
    _buttonCalories.clipsToBounds = YES;
    
    _buttonWater.layer.cornerRadius = _buttonWater.frame.size.height / 2;
    _buttonWater.clipsToBounds = YES;
    
    _buttonSteps.layer.cornerRadius = _buttonSteps.frame.size.height / 2;
    _buttonSteps.clipsToBounds = YES;
    
}

@end