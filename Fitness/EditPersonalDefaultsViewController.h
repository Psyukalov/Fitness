//
//  EditPersonalDefaultsViewController.h
//  Fitness
//
//  Created by Владимир Псюкалов on 29.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "ClassPerson.h"


@interface EditPersonalDefaultsViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, readwrite) ClassPerson *person;
@property (weak, nonatomic) IBOutlet UIView *secondView;
@property (weak, nonatomic) IBOutlet UITextField *editName;
@property (weak, nonatomic) IBOutlet UILabel *labelWeight;
@property (weak, nonatomic) IBOutlet UILabel *labelGrowth;
@property (weak, nonatomic) IBOutlet UIStepper *stepperChangeWeight;
@property (weak, nonatomic) IBOutlet UIStepper *stepperChangeGrowth;
@property (weak, nonatomic) IBOutlet UIDatePicker *dataPickerBirthday;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerGender;
@property (weak, nonatomic) IBOutlet UIButton *buttonAgreeDefaults;

- (IBAction)stepperChangeWeight:(id)sender;
- (IBAction)stepperChangeGrowth:(id)sender;
- (IBAction)buttonAgreeDefaults:(id)sender;

@end