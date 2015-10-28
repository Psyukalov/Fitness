//
//  PersonalOfficeViewController.m
//  Fitness
//
//  Created by Admin on 27.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "PersonalOfficeViewController.h"


@interface PersonalOfficeViewController () {
    
    @private
    ClassPerson *person;
    NSDateFormatter *formatter;
    
}

@end

@implementation PersonalOfficeViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    //
    person = [[ClassPerson alloc] init];
    person.name = @"GTA 5";
    [person setStartDate];
    _imageFirstAvatar.image = [UIImage imageNamed:@"images.jpeg"];
    _imageSecondAvatar.image = [UIImage imageNamed:@"images.jpeg"];
    person.avatar = UIImagePNGRepresentation(_imageFirstAvatar.image);
    person.weight = 68.8;
    person.growth = 1.78;
    person.birthday = person.startDate;
    person.gender = @"Женский";
    //
    
    self.navigationItem.title = @"НАСТРОЙКИ";
    
    // Second view with black shadow
    
    _secondView.layer.cornerRadius = 4;
    _secondView.layer.shadowColor = [[UIColor blackColor] CGColor];
    _secondView.layer.shadowRadius = 4;
    _secondView.layer.shadowOpacity = 0.5;
    _secondView.layer.shadowOffset = CGSizeMake(0, 8);
    
    // First avatar with black layer

    _imageFirstAvatar.layer.cornerRadius = 4;
    _imageFirstAvatar.clipsToBounds = YES;
    CALayer *secondAvatarLayer = [CALayer layer];
    secondAvatarLayer.frame = _imageFirstAvatar.frame;
    secondAvatarLayer.backgroundColor = [[UIColor blackColor] CGColor];
    secondAvatarLayer.opacity = 0.5;
    secondAvatarLayer.masksToBounds = NO;
    secondAvatarLayer.shadowColor = [[UIColor blackColor] CGColor];
    secondAvatarLayer.shadowRadius = 4;
    secondAvatarLayer.shadowOpacity = 0.5;
    secondAvatarLayer.shadowOffset = CGSizeMake(0, 8);
    [_imageFirstAvatar.layer addSublayer:secondAvatarLayer];
    
    // Second avatar
    
    _imageSecondAvatar.layer.cornerRadius = 46;
    _imageSecondAvatar.clipsToBounds = YES;
    
    // Name
    
    _labelName.text = person.name;
    
    // Start date
    
    formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd.MM.yyyy"];
    NSString *startDate = [formatter stringFromDate:person.startDate];
    _labelStartDate.text = [NSString stringWithFormat:@"мы вместе с %@", startDate];
    
    // Bio
    
    _labelWeight.text = [NSString stringWithFormat:@"%1.1f кг", person.weight];
    _labelGrowth.text = [NSString stringWithFormat:@"%1.1f м", person.growth];
    _labelBirthday.text = [formatter stringFromDate:person.birthday];
    _labelGender.text = person.gender;
    
    // Change avatar
    
    _buttonChangeAvatar.layer.cornerRadius = 15;
    _buttonChangeAvatar.clipsToBounds = YES;
    
    // Clear defaults button
    
    _buttonClearDefaults.layer.cornerRadius = 15;
    _buttonClearDefaults.clipsToBounds = YES;
    
    // Line
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, 472)];
    [path addLineToPoint:CGPointMake(_secondView.frame.size.width, 472)];
    CAShapeLayer *shapeLineLayer = [CAShapeLayer layer];
    shapeLineLayer.path = [path CGPath];
    shapeLineLayer.strokeColor = [[UIColor blackColor] CGColor];
    shapeLineLayer.lineWidth = 0.4;
    shapeLineLayer.fillColor = [[UIColor blackColor] CGColor];
    [_secondView.layer addSublayer:shapeLineLayer];
    
    // Buy button
    
    _buttonBuyApp.layer.cornerRadius = 4;
    _buttonBuyApp.clipsToBounds = YES;
    
}

- (IBAction)buttonChangeAvatar:(id)sender {

    

}

- (IBAction)buttonClearDefaults:(id)sender {

    [person clearDefaults];

}

@end