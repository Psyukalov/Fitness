//
//  PersonalHistogramViewController.h
//  Fitness
//
//  Created by Admin on 02.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "ClassPerson.h"
#import "ClassHistogram.h"


@interface PersonalHistogramViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageFirstAvatar;
@property (weak, nonatomic) IBOutlet UIImageView *imageSecondAvatar;
@property (strong, nonatomic) IBOutlet UIView *secondView;
@property (weak, nonatomic) IBOutlet UILabel *labelName;
@property (weak, nonatomic) IBOutlet UILabel *labelStartDate;

@end