//
//  WaterManagerViewController.h
//  Fitness
//
//  Created by Admin on 11.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import <UIKit/UIKit.h>


@interface WaterManagerViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *secondView;
@property (weak, nonatomic) IBOutlet UILabel *labelDay;
@property (weak, nonatomic) IBOutlet UILabel *labelMonth;
@property (weak, nonatomic) IBOutlet UILabel *labelWater;
@property (weak, nonatomic) IBOutlet UILabel *labelTip;
@property (weak, nonatomic) IBOutlet UIButton *buttonOK;
- (void)drawResult;
- (void)drawGlass;
- (IBAction)buttonAddGlass:(id)sender;
- (IBAction)buttonOK:(id)sender;

@end