//
//  MenuTableViewCell.m
//  Fitness
//
//  Created by Admin on 06.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "MenuTableViewCell.h"


@implementation MenuTableViewCell

@synthesize imageMenu = _imageMenu;
@synthesize labelMenu = _labelMenu;

- (void)awakeFromNib {
    
    _imageMenu.layer.cornerRadius = _imageMenu.frame.size.height / 2;
    _imageMenu.clipsToBounds = YES;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
    [super setSelected:selected animated:animated];
    
}

@end