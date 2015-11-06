//
//  ClassHistogram.m
//  Fitness
//
//  Created by Владимир Псюкалов on 30.10.15.
//  Copyright © 2015 Tataatsu IdeaLabs. All rights reserved.
//


#import "ClassHistogram.h"


@implementation ClassHistogram

@synthesize values = _values;
@synthesize maxValue = _maxValue;
@synthesize minTitleValue = _minTitleValue;
@synthesize barDelta = _barDelta;
@synthesize firstColor = _firstColor;
@synthesize secondColor = _secondColor;
@synthesize upBorder = _upBorder;
@synthesize leftBorder = _leftBorder;

- (ClassHistogram * )initWithFrame:(CGRect)frame
                            values:(NSArray *)values
                          maxValue:(int)maxValue
                     minTitleValue:(int)minTitleValue
                          barDelta:(int)barDelta
                        firstColor:(UIColor *)firstColor
                       secondColor:(UIColor *)secondColor
                      withUpBorder:(int)upBorder
                     andLeftBorder:(int)leftBorder {

    self = [super initWithFrame:frame];	
    
    if (self) {
        
        self.values = values;
        self.maxValue = maxValue;
        self.minTitleValue = minTitleValue;
        self.barDelta = barDelta;
        self.firstColor = firstColor;
        self.secondColor = secondColor;
        self.upBorder = upBorder;
        self.leftBorder = leftBorder;
        
    }
    
    return self;
    
}

- (void)drawRect:(CGRect)rect {
    
    // Fill background white color
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextClearRect(context, rect);
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextFillRect(context, rect);
    
    double pointSize = 4;
    double lineLength = self.frame.size.height - (self.frame.size.height - self.upBorder) * self.minTitleValue / self.maxValue;

    double width = self.frame.size.width / self.values.count - self.barDelta;

    for (int i = 0; i <= self.values.count - 1; i++) {
        
        double height = (self.frame.size.height - self.upBorder) * [[self.values objectAtIndex:i] integerValue] / self.maxValue;
        
        CGRect newRect = CGRectMake(i * width + i * self.barDelta,
                                    self.frame.size.height - height,
                                    width,
                                    height);
        UIColor *color;
        
        if (fmod(i, 2) == 0) {
            
            color = self.firstColor;

        } else {
            
            color = self.secondColor;

        }
        
        CGContextSetFillColorWithColor(context, color.CGColor);
        CGContextFillRect(context, newRect);
        
    }
    
    //Draw line
    
    [[UIColor blackColor] set];
    CGContextSetLineWidth(context, 1.0);
    CGContextMoveToPoint(context, self.leftBorder, self.upBorder);
    CGContextAddLineToPoint(context, self.leftBorder, lineLength);
    CGContextStrokePath(context);
    
    // Draw points
    
    CGContextFillRect(context, CGRectMake(self.leftBorder - pointSize / 2, self.upBorder - pointSize / 2, pointSize, pointSize));
    CGContextFillRect(context, CGRectMake(self.leftBorder - pointSize / 2, self.upBorder / 2 + lineLength / 2 - pointSize / 2, pointSize, pointSize));
    CGContextFillRect(context, CGRectMake(self.leftBorder - pointSize / 2, lineLength - pointSize / 2, pointSize, pointSize));
    
    // Make labels

    UILabel *maxValue = [[UILabel alloc] initWithFrame:CGRectMake(self.leftBorder + 6, self.upBorder - 10.5, 64, 21)];
    maxValue.text = [NSString stringWithFormat:@"%1d", self.maxValue];
    [maxValue setFont:[UIFont systemFontOfSize:14]];
    [self addSubview:maxValue];
    
    UILabel *averageValue = [[UILabel alloc] initWithFrame:CGRectMake(self.leftBorder + 6, self.upBorder / 2 + + lineLength / 2 - 10.5, 64, 21)];
    averageValue.text = [NSString stringWithFormat:@"%1d", (self.maxValue - self.minTitleValue) / 2 + self.minTitleValue];
    [averageValue setFont:[UIFont systemFontOfSize:14]];
    [self addSubview:averageValue];
    
    UILabel *minValue = [[UILabel alloc] initWithFrame:CGRectMake(self.leftBorder + 6, lineLength - 10.5 , 64, 21)];
    minValue.text = [NSString stringWithFormat:@"%1d", self.minTitleValue];
    [minValue setFont:[UIFont systemFontOfSize:14]];
    [self addSubview:minValue];
    
}

@end