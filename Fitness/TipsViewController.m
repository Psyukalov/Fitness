//
//  TipsViewController.m
//  Fitness
//
//  Created by Admin on 16.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "TipsViewController.h"


@interface TipsViewController () {
    
    int tipNumber;
    NSArray *images;
    NSArray *tips;
    
}

@end


@implementation TipsViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    tipNumber = 0;

    self.navigationItem.title = @"СОВЕТ";
    UIBarButtonItem *barButtonBack = [[UIBarButtonItem alloc] init];
    barButtonBack.title = @"";
    self.navigationController.navigationBar.topItem.backBarButtonItem = barButtonBack;
    
    _imageTip.layer.cornerRadius = 6;
    _imageTip.clipsToBounds = YES;
    
    _secondView.layer.cornerRadius = 6;
    _secondView.clipsToBounds = YES;
    _secondView.layer.shadowColor = [[UIColor blackColor] CGColor];
    _secondView.layer.shadowRadius = 6;
    _secondView.layer.shadowOpacity = 0.5;
    _secondView.layer.shadowOffset = CGSizeMake(0, 8);
    _secondView.layer.masksToBounds = NO;
    
    _buttonOK.layer.cornerRadius = _buttonOK.frame.size.width / 2;
    _buttonOK.clipsToBounds = YES;
    
    images = [ClassParserJSON createArrayWithValueKeyPath:@"tips" andValueKey:@"image" fromFile:@"Tips" ofType:@"json"];
    tips = [ClassParserJSON createArrayWithValueKeyPath:@"tips" andValueKey:@"tip" fromFile:@"Tips" ofType:@"json"];
    
    [self refreshViewWithTipNumber:0];
    
}

- (void)refreshViewWithTipNumber:(int)number {
    
    _imageTip.image = [UIImage imageNamed:[images objectAtIndex:number]];
    _labelTip.text = [tips objectAtIndex:number];
    
}

- (void)playAnimationWithTransition:(UIViewAnimationTransition)transition {
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [UIView setAnimationTransition:transition forView:self.view cache:YES];
    [UIView commitAnimations];
    
}

- (IBAction)buttonOK:(id)sender {

    [self.navigationController popViewControllerAnimated:YES];
    
}

- (IBAction)nextTip:(id)sender {
    
    if (tipNumber < [tips count] - 1) {
        
        tipNumber += 1;
        [self playAnimationWithTransition:UIViewAnimationTransitionFlipFromRight];
        [self refreshViewWithTipNumber:tipNumber];
        
    }
    
}

- (IBAction)previosTip:(id)sender {
    
    if (tipNumber > 0) {
        
        tipNumber -= 1;
        [self playAnimationWithTransition:UIViewAnimationTransitionFlipFromLeft];
        [self refreshViewWithTipNumber:tipNumber];
        
    }

    
}

@end