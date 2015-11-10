//
//  StartViewController.h
//  Fitness
//
//  Created by Admin on 10.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import <UIKit/UIKit.h>


@interface StartViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *labelMeeting;
@property (weak, nonatomic) IBOutlet UILabel *labelDate;
@property (weak, nonatomic) IBOutlet UILabel *labelTip;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *buttonCalories;
@property (weak, nonatomic) IBOutlet UIButton *buttonWater;
@property (weak, nonatomic) IBOutlet UIButton *buttonSteps;

@end