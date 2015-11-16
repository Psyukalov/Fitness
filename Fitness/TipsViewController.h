//
//  TipsViewController.h
//  Fitness
//
//  Created by Admin on 16.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "ClassParserJSON.h"


@interface TipsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *secondView;
@property (weak, nonatomic) IBOutlet UIImageView *imageTip;
@property (weak, nonatomic) IBOutlet UILabel *labelTip;
@property (weak, nonatomic) IBOutlet UIButton *buttonOK;
- (void)refreshViewWithTipNumber:(int)number;
- (void)playAnimationWithTransition:(UIViewAnimationTransition)transition;
- (IBAction)buttonOK:(id)sender;
- (IBAction)nextTip:(id)sender;
- (IBAction)previosTip:(id)sender;

@end