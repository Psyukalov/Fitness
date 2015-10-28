//
//  MainMenuTableViewController.h
//  Fitness
//
//  Created by Admin on 22.10.15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClassMainMenu.h"

@interface MainMenuTableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *mainMenuTableView;

@end