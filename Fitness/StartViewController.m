//
//  StartViewController.m
//  Fitness
//
//  Created by Admin on 10.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "StartViewController.h"


@interface StartViewController ()
    
@end


@implementation StartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //
    
    _secondView.layer.cornerRadius = 6;
    _secondView.clipsToBounds = YES;
    _secondView.layer.shadowColor = [[UIColor blackColor] CGColor];
    _secondView.layer.shadowRadius = 6;
    _secondView.layer.shadowOpacity = 0.5;
    _secondView.layer.shadowOffset = CGSizeMake(0, 8);
    _secondView.layer.masksToBounds = NO;
    
    _buttonCalories.layer.cornerRadius = _buttonCalories.frame.size.height / 2;
    _buttonCalories.clipsToBounds = YES;
    
    _buttonWater.layer.cornerRadius = _buttonWater.frame.size.height / 2;
    _buttonWater.clipsToBounds = YES;
    
    _buttonSteps.layer.cornerRadius = _buttonSteps.frame.size.height / 2;
    _buttonSteps.clipsToBounds = YES;
    
    //
    
    NSString *imageName;
    NSString *meet;
    NSString *tip;
    NSString *postScriptum;
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateFormat:@"HH"];
    int nowHour = (int)[[formatter stringFromDate:[NSDate date]] integerValue];
    
    [formatter setDateFormat:@"dd"];
    int nowDay = (int)[[formatter stringFromDate:[NSDate date]] integerValue];
    
    [formatter setDateFormat:@"MM"];
    int nowMonth = (int)[[formatter stringFromDate:[NSDate date]] integerValue];
    
    int morning = 6;
    int afternoon = 12;
    int evening = 17;
    
    if ((nowHour >= morning) && (nowHour < afternoon)) {
        
        imageName = @"morning@2x.png";
        meet = @"ДОБРОЕ УТРО";
        tip = @"Утром, в первую очередь советую выпить стакан воды.";
        postScriptum = @"Хорошего дня!";
        
    }
    
    if ((nowHour >= afternoon) && (nowHour < evening)) {
        
        imageName = @"afternoon@2x.png";
        meet = @"ДОБРЫЙ ДЕНЬ";
        tip = @"Не забудьте плотно пообедать. Хороший обед – залог доброго здравия.";
        postScriptum = @"Удачного дня!";
        
    }
    
    if ((nowHour >= evening) && (nowHour < 24)) {
        
        imageName = @"evening@2x.png";
        meet = @"ДОБРЫЙ ВЕЧЕР";
        tip = @"После трудового дня необходимо подкрепиться.";
        postScriptum = @"Приятного вечера!";
        
    }
    
    if ((nowHour >= 0) && (nowHour < morning)) {
        
        imageName = @"night@2x.png";
        meet = @"УЖЕ НОЧЬ";
        tip = @"Ночью лучше воздержаться от употребления пищи.";
        postScriptum = @"Спокойной ночи!";
        
    }
    
    NSString *captionMonth;
    
    switch (nowMonth) {
            
        case 1:
            captionMonth = @"Января";
            break;
            
        case 2:
            captionMonth = @"Февраля";
            break;
            
        case 3:
            captionMonth = @"Марта";
            break;
            
        case 4:
            captionMonth = @"Апреля";
            break;
            
        case 5:
            captionMonth = @"Мая";
            break;
            
        case 6:
            captionMonth = @"Июня";
            break;
            
        case 7:
            captionMonth = @"Июля";
            break;
            
        case 8:
            captionMonth = @"Августа";
            break;
            
        case 9:
            captionMonth = @"Сентября";
            break;
            
        case 10:
            captionMonth = @"Октября";
            break;
            
        case 11:
            captionMonth = @"Ноября";
            break;
            
        case 12:
            captionMonth = @"Декабря";
            break;
            
        default:
            break;
            
    }
    
    _image.image = [UIImage imageNamed:imageName];
    _labelMeet.text = meet;
    _labelDate.text = [NSString stringWithFormat:@"Сегодня %d %@", nowDay, captionMonth];
    _labelTip.text = tip;
    _labelPostScriptum.text = postScriptum;
    
}

@end