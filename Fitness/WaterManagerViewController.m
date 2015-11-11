//
//  WaterManagerViewController.m
//  Fitness
//
//  Created by Admin on 11.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "WaterManagerViewController.h"


@interface WaterManagerViewController ()

@end



@implementation WaterManagerViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.navigationItem.title = @"ВОДА";
    UIBarButtonItem *barButtonBack = [[UIBarButtonItem alloc] init];
    barButtonBack.title = @"";
    self.navigationController.navigationBar.topItem.backBarButtonItem = barButtonBack;
    
    _secondView.layer.cornerRadius = 6;
    _secondView.clipsToBounds = YES;
    _secondView.layer.shadowColor = [[UIColor blackColor] CGColor];
    _secondView.layer.shadowRadius = 6;
    _secondView.layer.shadowOpacity = 0.5;
    _secondView.layer.shadowOffset = CGSizeMake(0, 8);
    _secondView.layer.masksToBounds = NO;
    
    _b1.nextButton = _b2;
    _b2.nextButton = _b3;
    _b3.nextButton = _b1;
    
    [_b1 addTarget:self action:@selector(log) forControlEvents:UIControlEventTouchUpInside];
    [_b2 addTarget:self action:@selector(log) forControlEvents:UIControlEventTouchUpInside];
    [_b3 addTarget:self action:@selector(log) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)log {
    
    NSLog(@"!!!");
    
}

@end