//
//  PreviewViewController.h
//  Fitness
//
//  Created by Admin on 19.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import <UIKit/UIKit.h>


@interface PreviewViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *buttonStart;
- (void)refreshViewWithTipNumber:(int)number;
- (void)playAnimationWithTransition:(UIViewAnimationTransition)transition;
- (IBAction)next:(id)sender;
- (IBAction)previos:(id)sender;
- (IBAction)started:(id)sender;

@end