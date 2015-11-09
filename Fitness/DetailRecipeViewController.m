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

@synthesize t1, t2, t3, t4;

- (void)viewDidLoad {
    
    [super viewDidLoad];

    _l1.text = t1;
    _l2.text = t2;
    _l3.text = t3;
    _l4.text = t4;

}

@end
