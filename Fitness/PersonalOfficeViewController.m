//
//  PersonalOfficeViewController.m
//  Fitness
//
//  Created by Admin on 27.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "PersonalOfficeViewController.h"


@interface PersonalOfficeViewController () {
    
    @public
    ClassPerson *person;
    NSDateFormatter *formatter;
    
}

@end

@implementation PersonalOfficeViewController

- (void)viewDidLoad {

    [super viewDidLoad];

    person = [[ClassPerson alloc] init];
    self.navigationItem.title = @"НАСТРОЙКИ";
    
    // Second view with black shadow
    
    _secondView.layer.cornerRadius = 6;
    _secondView.layer.shadowColor = [[UIColor blackColor] CGColor];
    _secondView.layer.shadowRadius = 6;
    _secondView.layer.shadowOpacity = 0.5;
    _secondView.layer.shadowOffset = CGSizeMake(0, 8);
    
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
    
    // Bio
    
    _labelWeight.text = [NSString stringWithFormat:@"%1.1f кг", person.weight];
    _labelGrowth.text = [NSString stringWithFormat:@"%1.2f м", person.growth];
    _labelBirthday.text = [formatter stringFromDate:person.birthday];
    _labelGender.text = person.gender;
    
    // Change avatar
    
    _buttonChangeAvatar.layer.cornerRadius = 15;
    _buttonChangeAvatar.clipsToBounds = YES;
    
    // Clear defaults button
    
    _buttonClearDefaults.layer.cornerRadius = 15;
    _buttonClearDefaults.clipsToBounds = YES;

    // Buy button
    
    _buttonBuyApp.layer.cornerRadius = 6;
    _buttonBuyApp.clipsToBounds = YES;
    
}

- (IBAction)buttonChangeAvatar:(id)sender {

    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) {
        
        UIImagePickerController *picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        [picker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
        picker.allowsEditing = YES;
        [self presentViewController:picker animated:true completion:nil];
        
    }

}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
    _imageFirstAvatar.image = image;
    _imageSecondAvatar.image = image;
    person.avatar = UIImagePNGRepresentation(_imageFirstAvatar.image);
    [self dismissViewControllerAnimated:true completion:nil];

}

- (IBAction)buttonEditPerson:(id)sender {

    //

}

- (IBAction)buttonBuyApp:(id)sender {

    //

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"segueToEditPersonalDefaults"]) {
        
        [segue.destinationViewController setPerson:person];
        
    }
    
}

@end