//
//  ClassPerson.m
//  Firness
//
//  Created by Admin on 22.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "ClassPerson.h"


@implementation ClassPerson {
    
    NSUserDefaults *defaults;
    
}

@synthesize avatar = _avatar;
@synthesize name = _name;
@synthesize birthday = _birthday;
@synthesize startDate = _startDate;
@synthesize gender = _gender;
@synthesize weight = _weight;
@synthesize growth = _growth;

- (id)init {
    
    self = [super init];
    
    if (self) {
        
        defaults = [NSUserDefaults standardUserDefaults];

    }
    
    return self;
    
}

// Avatar

- (void)setAvatar:(NSData *)avatar {
    
    _avatar = avatar;
    
}

- (NSData *)avatar {
    
    return _avatar;
    
}

// Name

- (void)setName:(NSString *)name {
    
    _name = name;
        
}

- (NSString *)name {
    
    return _name;
    
}

// Start date

- (void)setStartDate {
    
    _startDate = [NSDate date];
    
}

- (NSDate *)startDate {
    
    return _startDate;
    
}

// Weight

- (void)setWeight:(double)weight {
    
    _weight = weight;
    
}

- (double)weight {
    
    return _weight;
    
}

// Growth

- (void)setGrowth:(double)growth {
    
    _growth = growth;
    
}

- (double)growth {
    
    return _growth;
    
}

// Birthday

- (void)setBirthday:(NSDate *)birthday {
        
    _birthday = birthday;
    
}

- (NSDate *)birthday {
    
    return _birthday;
    
}

// Gender

- (void)setGender:(NSString *)gender {
    
    if ([gender isEqualToString:@"Мужской"]) {
        
        _gender = gender;
        
    } else if ([gender isEqualToString:@"Женский"]) {
        
        _gender = gender;
        
    }
    
}

- (NSString *)gender {
    
    return _gender;
    
}

// Methods

- (void)save {
    
    [defaults setObject:_name forKey:@"name"];
    [defaults setObject:_startDate forKey:@"start"];
    [defaults setDouble:_weight forKey:@"weight"];
    [defaults setDouble:_growth forKey:@"growth"];
    [defaults setObject:_birthday forKey:@"birthday"];
    [defaults setObject:_gender forKey:@"gender"];
    
}

- (void)saveAvatar {
    
    [defaults setObject:_avatar forKey:@"avatar"];
    
}

- (void)load {
    
    _name = [defaults objectForKey:@"name"];
    _startDate = [defaults objectForKey:@"start"];
    _weight = [defaults doubleForKey:@"weight"];
    _growth = [defaults doubleForKey:@"growth"];
    _birthday = [defaults objectForKey:@"birthday"];
    _gender = [defaults objectForKey:@"gender"];
    
    if (_name == nil) {
        
        _name = @"Введите имя";
        
    }
    
    if (_weight == 0) {
        
        _weight = 80;
        
    }
    
    if (_growth == 0) {
        
        _growth = 180;
        
    }
    
    if (_birthday == nil) {
        
        _birthday = [NSDate date];

    }
    
    if (_startDate == nil) {
        
        _startDate = [NSDate date];
        
    }
    
    if (_gender == nil) {
        
        _gender = @"Мужской";
        
    }
    
}

- (void)loadAvatar {
    
    _avatar = [defaults objectForKey:@"avatar"];
    
}

- (void)clearDefaults {
    
    NSDictionary *dictionary = [defaults dictionaryRepresentation];
    
    for (id key in dictionary) {
        
        [defaults removeObjectForKey:key];
        
    }
    
}

@end
