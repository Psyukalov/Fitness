//
//  ClassPerson.h
//  Fitness
//
//  Created by Admin on 22.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface ClassPerson : NSObject

@property (nonatomic, readwrite) NSData *avatar;
@property (nonatomic, readwrite) NSString *name;
@property (nonatomic, readwrite) NSDate *birthday;
@property (nonatomic, readonly) NSDate *startDate;
@property (nonatomic, readwrite) NSString *gender;
@property (nonatomic, readwrite) double weight;
@property (nonatomic, readwrite) double growth;

- (void)setStartDate;
- (void)clearDefaults;

@end