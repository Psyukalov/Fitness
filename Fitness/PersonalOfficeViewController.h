//
//  PersonalOfficeViewController.h
//  Fitness
//
//  Created by Admin on 27.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "ClassPerson.h"
#import "EditPersonalDefaultsViewController.h"


@interface PersonalOfficeViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIView *secondView;
@property (weak, nonatomic) IBOutlet UIImageView *imageFirstAvatar;
@property (weak, nonatomic) IBOutlet UIImageView *imageSecondAvatar;
@property (weak, nonatomic) IBOutlet UILabel *labelName;
@property (weak, nonatomic) IBOutlet UILabel *labelStartDate;
@property (weak, nonatomic) IBOutlet UILabel *labelWeight;
@property (weak, nonatomic) IBOutlet UILabel *labelGrowth;
@property (weak, nonatomic) IBOutlet UILabel *labelBirthday;
@property (weak, nonatomic) IBOutlet UILabel *labelGender;
@property (weak, nonatomic) IBOutlet UIButton *buttonBuyApp;
@property (weak, nonatomic) IBOutlet UIButton *buttonChangeAvatar;
@property (weak, nonatomic) IBOutlet UIButton *buttonClearDefaults;

- (IBAction)buttonChangeAvatar:(id)sender;
- (IBAction)buttonEditPerson:(id)sender;
- (IBAction)buttonBuyApp:(id)sender;

@end