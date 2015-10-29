//
//  EditPersonalDefaultsViewController.m
//  Fitness
//
//  Created by Владимир Псюкалов on 29.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "EditPersonalDefaultsViewController.h"


@interface EditPersonalDefaultsViewController () {
    
    double growth;
    double weight;
    NSArray *listGender;
    
}

@end


@implementation EditPersonalDefaultsViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    listGender = @[@"Мужской", @"Женский"];
    
    _secondView.layer.cornerRadius = 6;
    _secondView.layer.shadowColor = [[UIColor blackColor] CGColor];
    _secondView.layer.shadowRadius = 6;
    _secondView.layer.shadowOpacity = 0.5;
    _secondView.layer.shadowOffset = CGSizeMake(0, 8);
    
    _buttonAgreeDefaults.layer.cornerRadius = 15;
    
    _editName.text = @"Введите имя";
    _editName.layer.cornerRadius = 10;
    _editName.layer.masksToBounds = YES;
    
    weight = 80;
    _labelWeight.text = [NSString stringWithFormat:@"Вес %1.1f кг", weight];
    
    growth = 1.5;
    _labelGrowth.text = [NSString stringWithFormat:@"Рост %1.2f м", growth];
    
    _stepperChangeWeight.value = weight;
    _stepperChangeWeight.minimumValue = 10;
    _stepperChangeWeight.stepValue = 0.1;
    
    _stepperChangeGrowth.value = growth;
    _stepperChangeGrowth.minimumValue = 1;
    _stepperChangeGrowth.stepValue = 0.01;
    
    _dataPickerBirthday.maximumDate = [NSDate date];
    
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
    
    weight = _stepperChangeWeight.value;
    _labelWeight.text = [NSString stringWithFormat:@"Вес %1.1f кг", weight];\

}

- (IBAction)stepperChangeGrowth:(id)sender {

    growth = _stepperChangeGrowth.value;
    _labelGrowth.text = [NSString stringWithFormat:@"Рост %1.2f м", growth];
    
}

- (IBAction)buttonAgreeDefaults:(id)sender {
    
    ClassPerson *person = [[ClassPerson alloc] init];
    person.name = _editName.text;
    [person setStartDate];
    person.weight = weight;
    person.growth = growth;
    person.birthday = _dataPickerBirthday.date;
    person.gender = listGender[[_pickerGender selectedRowInComponent:0]];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end