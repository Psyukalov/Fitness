//
//  MainMenuTableViewController.m
//  Fitness
//
//  Created by Admin on 22.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import "MainMenuTableViewController.h"

@interface MainMenuTableViewController () {
    
    ClassMainMenu *mainMenu;
    
}

@end

@implementation MainMenuTableViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    mainMenu = [[ClassMainMenu alloc] init];
    [mainMenu setCountNewRecipes:0
               countNewExercizes:0
                    countNewTips:2
           countNewPrescriptions:0];
    
    self.navigationItem.title = @"МЕНЮ";
    UIBarButtonItem *barButtonBack = [[UIBarButtonItem alloc] init];
    barButtonBack.title = @"";
    self.navigationController.navigationBar.topItem.backBarButtonItem = barButtonBack;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [mainMenu.getMainMenuItems count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellCaptions = [[mainMenu getMainMenuIdentification] objectAtIndex:indexPath.row];
    UITableViewCell *prototypeCell = [tableView dequeueReusableCellWithIdentifier:cellCaptions];
    prototypeCell.textLabel.text = [[mainMenu getMainMenuItems] objectAtIndex:indexPath.row];
    
    switch (indexPath.row) {
        
        case 0:
            if (mainMenu.countNewRecipes != 0) {
                prototypeCell.detailTextLabel.text = [NSString stringWithFormat:@"%ld", (long)mainMenu.countNewRecipes];
            } else {
                prototypeCell.detailTextLabel.text = @"";
            }
            break;
        
        case 1:
            if (mainMenu.countNewExercizes != 0) {
                prototypeCell.detailTextLabel.text = [NSString stringWithFormat:@"%ld", (long)mainMenu.countNewExercizes];
            } else {
                prototypeCell.detailTextLabel.text = @"";
            }
            break;
        case 2:
            if (mainMenu.countNewTips != 0) {
                prototypeCell.detailTextLabel.text = [NSString stringWithFormat:@"%ld", (long)mainMenu.countNewTips];
            } else {
                prototypeCell.detailTextLabel.text = @"";
            }
            break;
        case 3:
            if (mainMenu.countNewPrescriptions != 0) {
                prototypeCell.detailTextLabel.text = [NSString stringWithFormat:@"%ld", (long)mainMenu.countNewPrescriptions];
            } else {
                prototypeCell.detailTextLabel.text = @"";
            }
            break;
        default:
            prototypeCell.detailTextLabel.text = @"";
            break;
            
    }
    
    return prototypeCell;
    
}

@end
