//
//  ClassParserJSON.h
//  Fitness
//
//  Created by Admin on 06.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import <Foundation/Foundation.h>


@interface ClassParserJSON : NSObject

+ (NSMutableArray *)createArrayWithValueKeyPath:(NSString *)keyPath
                                    andValueKey:(NSString *)key
                                       fromFile:(NSString *)file
                                         ofType:(NSString *)type;

@end