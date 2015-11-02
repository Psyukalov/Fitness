//
//  PersonalHistogramViewController.m
//  Fitness
//
//  Created by Admin on 02.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "PersonalHistogramViewController.h"


@interface PersonalHistogramViewController () {
    
    ClassPerson *person;
    NSDateFormatter *formatter;
    
}

@end


@implementation PersonalHistogramViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
     self.navigationItem.title = @"ЛИЧНЫЙ КАБИНЕТ";
    
    // Second view with black shadow
    
    _secondView.layer.cornerRadius = 6;
    _secondView.layer.shadowColor = [[UIColor blackColor] CGColor];
    _secondView.layer.shadowRadius = 6;
    _secondView.layer.shadowOpacity = 0.5;
    _secondView.layer.shadowOffset = CGSizeMake(0, 8);
    
    NSArray *vals = [NSArray arrayWithObjects:
                     [NSNumber numberWithInt:15100],
                     [NSNumber numberWithInt:15500],
                     [NSNumber numberWithInt:14800],
                     [NSNumber numberWithInt:15050],
                     [NSNumber numberWithInt:15200],
                     [NSNumber numberWithInt:14990],
                     [NSNumber numberWithInt:15300],
                     nil];
    
    ClassHistogram *histogram = [[ClassHistogram alloc] initWithFrame:_secondView.bounds
                                                               values:vals
                                                             maxValue:19000
                                                        minTitleValue:6000
                                                             barDelta:0
                                                           firstColor:[UIColor colorWithRed:0
                                                                                      green:225
                                                                                       blue:255
                                                                                      alpha:1.0]
                                                          secondColor:[UIColor colorWithRed:0
                                                                                      green:225
                                                                                       blue:255
                                                                                      alpha:0.6]
                                                           withBorder:12];
    
    histogram.layer.cornerRadius = 6;
    histogram.clipsToBounds = YES;
    
    [_secondView addSubview:histogram];
    
    person = [[ClassPerson alloc] init];
    
    // First avatar with black layer
    
    _imageFirstAvatar.image = [UIImage imageWithData:person.avatar];
    _imageFirstAvatar.layer.cornerRadius = 6;
    _imageFirstAvatar.clipsToBounds = YES;
    CALayer *secondAvatarLayer = [CALayer layer];
    secondAvatarLayer.frame = _imageFirstAvatar.bounds;
    secondAvatarLayer.cornerRadius = 2;
    secondAvatarLayer.backgroundColor = [[UIColor blackColor] CGColor];
    secondAvatarLayer.opacity = 0.5;
    [_imageFirstAvatar.layer addSublayer:secondAvatarLayer];
    
    // Second avatar
    
    _imageSecondAvatar.image = [UIImage imageWithData:person.avatar];
    _imageSecondAvatar.layer.cornerRadius = 46;
    _imageSecondAvatar.clipsToBounds = YES;
    
    // Name
    
    _labelName.text = person.name;
    
    // Start date
    
    formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd.MM.yyyy"];
    NSString *startDate = [formatter stringFromDate:person.startDate];
    _labelStartDate.text = [NSString stringWithFormat:@"мы вместе с %@", startDate];
    
}

@end