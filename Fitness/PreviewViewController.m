//
//  PreviewViewController.m
//  Fitness
//
//  Created by Admin on 19.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "PreviewViewController.h"


@interface PreviewViewController () {
    
    int previewNumber;
    NSArray *images;
    NSArray *captions;
    
}

@end


@implementation PreviewViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    images = @[@"pr1.png", @"pr2.png", @"pr3.png"];
    captions = @[@"ЭФФЕКТИВНЫЙ ПОМОЩНИК", @"ЗАБУДЬТЕ ПРО ГОЛОДАНИЕ", @"ОПЫТНЫЙ ДИЕТОЛОГ"];
    
    previewNumber = 0;
    
    self.navigationItem.title = @"NATALIA ZUBAREVA";
    UIBarButtonItem *barButtonBack = [[UIBarButtonItem alloc] init];
    barButtonBack.title = @"";
    self.navigationController.navigationBar.topItem.backBarButtonItem = barButtonBack;
    
    _image.layer.cornerRadius = 6;
    _image.clipsToBounds = YES;
    
    _label.layer.cornerRadius = 6;
    _label.clipsToBounds = YES;
    
    _buttonStart.layer.cornerRadius = 6;
    _buttonStart.clipsToBounds = YES;
    
    [self refreshViewWithTipNumber:previewNumber];
    
}

- (void)refreshViewWithTipNumber:(int)number {
    
    _image.image = [UIImage imageNamed:[images objectAtIndex:number]];
    _label.text = [captions objectAtIndex:number];
    
}

- (void)playAnimationWithTransition:(UIViewAnimationTransition)transition {
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [UIView setAnimationTransition:transition forView:self.view cache:YES];
    [UIView commitAnimations];
    
}

- (IBAction)next:(id)sender {
    
    if (previewNumber < [captions count] - 1) {
        
        previewNumber += 1;
        [self playAnimationWithTransition:UIViewAnimationTransitionFlipFromRight];
        [self refreshViewWithTipNumber:previewNumber];
        
    }
    
}

- (IBAction)previos:(id)sender {
    
    if (previewNumber > 0) {
        
        previewNumber -= 1;
        [self playAnimationWithTransition:UIViewAnimationTransitionFlipFromLeft];
        [self refreshViewWithTipNumber:previewNumber];
        
    }
    
}


- (IBAction)started:(id)sender {

    [self.navigationController popViewControllerAnimated:YES];

}


@end