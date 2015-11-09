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
    _secondView.layer.shadowColor = [[UIColor blackColor] CGColor];
    _secondView.layer.shadowRadius = 6;
    _secondView.layer.shadowOpacity = 0.5;
    _secondView.layer.shadowOffset = CGSizeMake(0, 8);
    
    _buttonAgreeDefaults.layer.cornerRadius = 15;
    
    _editName.text = self.person.name;
    
    _editName.layer.cornerRadius = 10;
    _editName.layer.masksToBounds = YES;
    
    _labelWeight.text = [NSString stringWithFormat:@"Вес %1.1f кг", self.person.weight];

    _labelGrowth.text = [NSString stringWithFormat:@"Рост %1.2f м", self.person.growth];
    
    _stepperChangeWeight.minimumValue = 10;
    _stepperChangeWeight.maximumValue = 250;
    _stepperChangeWeight.stepValue = 0.1;
    _stepperChangeWeight.value = self.person.weight;
    
    _stepperChangeGrowth.minimumValue = 1;
    _stepperChangeGrowth.maximumValue = 220;
    _stepperChangeGrowth.stepValue = 0.01;
    _stepperChangeGrowth.value = self.person.growth;
    
    _dataPickerBirthday.maximumDate = [NSDate date];
    _dataPickerBirthday.date = self.person.birthday;
    
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
    
    self.person.weight = _stepperChangeWeight.value;
    _labelWeight.text = [NSString stringWithFormat:@"Вес %1.1f кг", self.person.weight];

}

- (IBAction)stepperChangeGrowth:(id)sender {

    self.person.growth = _stepperChangeGrowth.value;
    _labelGrowth.text = [NSString stringWithFormat:@"Рост %1.2f м", self.person.growth];
    
}

- (IBAction)buttonAgreeDefaults:(id)sender {

    self.person.name = _editName.text;
    [self.person setStartDate];
    self.person.birthday = _dataPickerBirthday.date;
    self.person.gender = listGender[[_pickerGender selectedRowInComponent:0]];
    
    [self.person save];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end