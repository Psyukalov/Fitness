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
    [defaults setObject:_avatar forKey:@"avatar"];
    
}

- (NSData *)avatar {
    
    _avatar = [defaults objectForKey:@"avatar"];
    return _avatar;
    
}

// Name

- (void)setName:(NSString *)name {
    
    _name = name;
    [defaults setObject:_name forKey:@"name"];
    
}

- (NSString *)name {
    
    _name = [defaults objectForKey:@"name"];
    return _name;
    
}

// Birthday

- (void)setBirthday:(NSDate *)birthday {
    
    if (birthday < [NSDate date]) {
        
        _birthday = birthday;
        [defaults setObject:_birthday forKey:@"birthday"];
        
    }
    
}

- (NSDate *)birthday {
    
    _birthday = [defaults objectForKey:@"birthday"];
    return _birthday;
    
}

//Start date

- (void)setStartDate {
    
    _startDate = [NSDate date];
    [defaults setObject:_startDate forKey:@"start"];
    
}

- (NSDate *)startDate {
    
    _startDate = [defaults objectForKey:@"start"];
    return _startDate;
    
}

// Gender

- (void)setGender:(NSString *)gender {
    
    if ([gender isEqualToString:@"Мужской"]) {
        
        _gender = gender;
        
    } else if ([gender isEqualToString:@"Женский"]) {
        
        _gender = gender;
        
    }
    
    [defaults setObject:_gender forKey:@"gender"];
    
}

- (NSString *)gender {
    
    _gender = [defaults objectForKey:@"gender"];
    return _gender;
    
}

// Weight

- (void)setWeight:(double)weight {
    
    _weight = weight;
    [defaults setDouble:_weight forKey:@"weight"];
    
}

- (double)weight {
    
    _weight = [defaults doubleForKey:@"weight"];
    return _weight;
    
}

// Growth

- (void)setGrowth:(double)growth {
    
    _growth = growth;
    [defaults setDouble:_growth forKey:@"growth"];
    
}

- (double)growth {
    
    _growth = [defaults doubleForKey:@"growth"];
    return _growth;
    
}

// Methods

- (void)clearDefaults {
    
    NSDictionary *dictionary = [defaults dictionaryRepresentation];
    
    for (id key in dictionary) {
        
        [defaults removeObjectForKey:key];
        
    }
    
}

@end
