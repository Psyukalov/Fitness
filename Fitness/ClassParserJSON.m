//
//  ClassParserJSON.m
//  Fitness
//
//  Created by Admin on 06.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "ClassParserJSON.h"


@implementation ClassParserJSON

+ (NSMutableArray *)createArrayWithValueKeyPath:(NSString *)keyPath
                                    andValueKey:(NSString *)key {
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *pathJSON = [bundle pathForResource:@"Recipes" ofType:@"json"];
    NSData *dataJSON = [NSData dataWithContentsOfFile:pathJSON];
    
    NSError *parseError;
    NSJSONSerialization *series =[NSJSONSerialization JSONObjectWithData:dataJSON
                                                                 options:NSJSONReadingMutableLeaves
                                                                   error:&parseError];
    NSMutableArray *result = [[NSMutableArray alloc] init];
    NSArray *list = [series valueForKeyPath:keyPath];
    
    if (parseError == nil) {
        
        for (NSDictionary *temp in list) {
            
            [result addObject:[temp valueForKey:key]];
            
        }
        
    }
    
    return result;
    
}

@end