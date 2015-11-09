//
//  DetailRecipeViewController.h
//  Fitness
//
//  Created by Admin on 09.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "ClassRecipe.h"


@interface DetailRecipeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *l1;
@property (weak, nonatomic) IBOutlet UILabel *l2;
@property (weak, nonatomic) IBOutlet UILabel *l3;
@property (weak, nonatomic) IBOutlet UILabel *l4;

@property (nonatomic) NSString *t1;
@property (nonatomic) NSString *t2;
@property (nonatomic) NSString *t3;
@property (nonatomic) NSString *t4;

@end