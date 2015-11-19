//
//  EditPersonalDefaultsViewController.m
//  Fitness
//
//  Created by Владимир Псюкалов on 29.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import "EditPersonalDefaultsViewController.h"

@interface EditPersonalDefaultsViewController () {
    
    NSArray *listGender;
    
}

@end


@implementation EditPersonalDefaultsViewController

@synthesize person = _person;

- (void)setPerson:(ClassPerson *)person {
    
    _person = person;
    
}

- (ClassPerson *)person {
    
    return _person;
    
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    listGender = @[@"Мужской", @"Женский"];
    
    _secondView.layer.cornerRadius = 6;
    _secondView.clipsToBounds = YES;
    _secondView.layer.shadowColor = [[UIColor blackColor] CGColor];
    _secondView.layer.shadowRadius = 6;
    _secondView.layer.shadowOpacity = 0.5;
    _secondView.layer.shadowOffset = CGSizeMake(0, 8);
    _secondView.layer.masksToBounds = NO;
    
    
    _buttonAgreeDefaults.layer.cornerRadius = 15;
    
    _editName.text = _person.name;
    
    _labelWeight.text = [NSString stringWithFormat:@"Вес %1.1f кг", _person.weight];

    _labelGrowth.text = [NSString stringWithFormat:@"Рост %1.2f м", _person.growth];
    
    _stepperChangeWeight.minimumValue = 10;
    _stepperChangeWeight.maximumValue = 250;
    _stepperChangeWeight.stepValue = 0.1;
    _stepperChangeWeight.value = _person.weight;
    
    _stepperChangeGrowth.minimumValue = 1;
    _stepperChangeGrowth.maximumValue = 2.20;
    _stepperChangeGrowth.stepValue = 0.01;
    _stepperChangeGrowth.value = _person.growth;
    
    _dataPickerBirthday.maximumDate = [NSDate date];
    _dataPickerBirthday.date = _person.birthday;
    
    if ([_person.gender isEqualToString:@"Мужской"]) {
        
        [_pickerGender selectRow:0 inComponent:0 animated:YES];
        
    } else {
        
        [_pickerGender selectRow:1 inComponent:0 animated:YES];
        
    }
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 1;
    
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    return 2;
    
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {

    return [listGender objectAtIndex:row];
    
}

- (IBAction)stepperChangeWeight:(id)sender {
    
    _person.weight = _stepperChangeWeight.value;
    _labelWeight.text = [NSString stringWithFormat:@"Вес %1.1f кг", _person.weight];

}

- (IBAction)stepperChangeGrowth:(id)sender {

    _person.growth = _stepperChangeGrowth.value;
    _labelGrowth.text = [NSString stringWithFormat:@"Рост %1.2f м", _person.growth];
    
}

- (IBAction)buttonAgreeDefaults:(id)sender {

    _person.name = _editName.text;
    [_person setStartDate];
    _person.birthday = _dataPickerBirthday.date;
    _person.gender = listGender[[_pickerGender selectedRowInComponent:0]];
    
    [_person save];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end