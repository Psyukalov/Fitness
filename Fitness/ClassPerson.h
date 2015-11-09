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
@property (nonatomic, readonly) NSDate *startDate;
@property (nonatomic, readwrite) double weight;
@property (nonatomic, readwrite) double growth;
@property (nonatomic, readwrite) NSDate *birthday;
@property (nonatomic, readwrite) NSString *gender;

- (void)save;
- (void)load;
- (void)saveAvatar;
- (void)loadAvatar;
- (void)setStartDate;
- (void)clearDefaults;

@end