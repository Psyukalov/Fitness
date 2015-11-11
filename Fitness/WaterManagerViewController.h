//
//  WaterManagerViewController.h
//  Fitness
//
//  Created by Admin on 11.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "ClassWaterButton.h"

@interface WaterManagerViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *secondView;
@property (weak, nonatomic) IBOutlet ClassWaterButton *b1;
@property (weak, nonatomic) IBOutlet ClassWaterButton *b2;
@property (weak, nonatomic) IBOutlet ClassWaterButton *b3;

- (void)log;

@end