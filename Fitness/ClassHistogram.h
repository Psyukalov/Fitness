//
//  ClassHistogram.h
//  Fitness
//
//  Created by Владимир Псюкалов on 30.10.15.
//  Copyright © 2015 Tataatsu IdeaLabs. All rights reserved.
//


#import <UIKit/UIKit.h>


@interface ClassHistogram : UIView

- (ClassHistogram *)initWithFrame:(CGRect)frame
                           values:(NSArray *)values
                         maxValue:(int)maxValue
                    minTitleValue:(int)minTitleValue
                         barDelta:(int)barDelta
                       firstColor:(UIColor *)firstColor
                      secondColor:(UIColor *)secondColor
                     withUpBorder:(int)upBorder
                    andLeftBorder:(int)leftBorder;

@property (nonatomic) NSArray *values;
@property (nonatomic) int maxValue;
@property (nonatomic) int minTitleValue;
@property (nonatomic) int barDelta;
@property (nonatomic) UIColor *firstColor;
@property (nonatomic) UIColor *secondColor;
@property (nonatomic) int upBorder;
@property (nonatomic) int leftBorder;

@end