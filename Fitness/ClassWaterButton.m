//
//  ClassWaterButton.m
//  Fitness
//
//  Created by Admin on 11.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "ClassWaterButton.h"


@implementation ClassWaterButton

@synthesize nextButton = _nextButton;

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    self.titleLabel.text = @"1";
    _nextButton.titleLabel.text = @"+";
    
}

- (void)changeStatus {
    
    self.titleLabel.text = @"1";
    _nextButton.titleLabel.text = @"+";
    
}

@end