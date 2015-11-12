//
//  WaterManagerViewController.m
//  Fitness
//
//  Created by Admin on 11.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "WaterManagerViewController.h"


@interface WaterManagerViewController () {
    
    NSMutableArray *images;
    NSUserDefaults *useGlass;
    int countGlass;
    
}

@end



@implementation WaterManagerViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    images = [[NSMutableArray alloc] init];
    
    useGlass = [NSUserDefaults standardUserDefaults];
    countGlass = (int)[useGlass integerForKey:@"countGlass"];
    
    self.navigationItem.title = @"ВОДА";
    UIBarButtonItem *barButtonBack = [[UIBarButtonItem alloc] init];
    barButtonBack.title = @"";
    self.navigationController.navigationBar.topItem.backBarButtonItem = barButtonBack;
    
    _secondView.layer.cornerRadius = 6;
    _secondView.clipsToBounds = YES;
    _secondView.layer.shadowColor = [[UIColor blackColor] CGColor];
    _secondView.layer.shadowRadius = 6;
    _secondView.layer.shadowOpacity = 0.5;
    _secondView.layer.shadowOffset = CGSizeMake(0, 8);
    _secondView.layer.masksToBounds = NO;
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd"];
    int nowDay = (int)[[formatter stringFromDate:[NSDate date]] integerValue];
    
    [formatter setDateFormat:@"MM"];
    int nowMonth = (int)[[formatter stringFromDate:[NSDate date]] integerValue];
    
    NSString *captionMonth;
    
    switch (nowMonth) {
            
        case 1:
            captionMonth = @"ЯНВ";
            break;
            
        case 2:
            captionMonth = @"ФЕВ";
            break;
            
        case 3:
            captionMonth = @"МАР";
            break;
            
        case 4:
            captionMonth = @"АПР";
            break;
            
        case 5:
            captionMonth = @"МАЙ";
            break;
            
        case 6:
            captionMonth = @"ИЮН";
            break;
            
        case 7:
            captionMonth = @"ИЮЛ";
            break;
            
        case 8:
            captionMonth = @"АВГ";
            break;
            
        case 9:
            captionMonth = @"СЕН";
            break;
            
        case 10:
            captionMonth = @"ОКТ";
            break;
            
        case 11:
            captionMonth = @"НОЯ";
            break;
            
        case 12:
            captionMonth = @"ДЕК";
            break;
            
        default:
            break;
            
    }
    
    _labelDay.text = [NSString stringWithFormat:@"%d", nowDay];
    _labelMonth.text = captionMonth;
    
    _buttonOK.layer.cornerRadius = _buttonOK.frame.size.width / 2;
    _buttonOK.clipsToBounds = YES;
    
    [self drawResult];
    
    [self drawGlass];
    
}

- (void)drawResult {
    
    _labelWater.text = [NSString stringWithFormat:@"%d", countGlass * 250];
    
    NSString *tip;
    
    if (countGlass <= 5) {
        
        tip = @"Вы не достигли суточную норму воды!";
        
    } else if ((countGlass <= 7) && (countGlass > 5)) {
        
        tip = @"Вы почти достигли суточную норму воды!";
        
    } else {
        
        tip = @"Вы достигли суточную норму воды! Больше пить не рекомендуется!";
        
    }
    
    _labelTip.text = tip;
    
}

- (void)drawGlass {
    
    int left = 24;
    int down = 196;
    int height = 64;
    int deltaHeight = 26;
    int deltaWidth = 42;
    int width = (_secondView.frame.size.width - 2 * left - 3 * deltaWidth) / 4;
    int count = 0;
    
    for (int i = 0; i <= 1; i++) {
        
        for (int j = 0; j <= 3; j++) {
            
            UIImageView *image = [[UIImageView alloc] initWithFrame:_secondView.frame];
            image.frame = CGRectMake(left + j * width + j * deltaWidth , down + i * height + i * deltaHeight, width, height);
            image.image = [UIImage imageNamed:@"emptyGlass@2x.png"];
            image.contentMode = UIViewContentModeScaleAspectFit;
            [images addObject:image];
            [_secondView addSubview:[images objectAtIndex:count]];
            count += 1;
            
        }
        
    }
    
    for (int i = 0; i <= countGlass - 1; i++) {
        
        [images[i] setImage:[UIImage imageNamed:@"fullGlass@2x.png"]];
        
    }
    
    if (countGlass != 8) {
        
        [images[countGlass] setImage:[UIImage imageNamed:@"addGlass@2x.png"]];
        
    }
    
}

- (IBAction)buttonAddGlass:(id)sender {
    
    if (countGlass < 8) {
    
        [images[countGlass] setImage:[UIImage imageNamed:@"fullGlass@2x.png"]];
        
        if (countGlass != 7) {
            
            [images[countGlass + 1] setImage:[UIImage imageNamed:@"addGlass@2x.png"]];
            
        }
        
        countGlass += 1;
        
        [self drawResult];
        
    }
    
}

- (IBAction)buttonOK:(id)sender {
    
    [useGlass setInteger:(long)countGlass forKey:@"countGlass"];
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

@end