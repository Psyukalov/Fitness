//
//  RecipeTableViewController.m
//  Fitness
//
//  Created by Admin on 06.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "RecipeTableViewController.h"


@interface RecipeTableViewController () {
    
    NSArray *names;
    NSArray *images;
    
}

@end

@implementation RecipeTableViewController

@synthesize menuType = _menuType;

- (void)setMenuType:(int)menuType {
    
    _menuType = menuType;
    
}

- (void)viewDidLoad {

    [super viewDidLoad];
    
    NSString * recipeType;
    
    switch (self.menuType) {
        case 0:
            recipeType = @"breakfast";
            break;
        case 1:
            recipeType = @"secondBreakfast";
            break;
        case 2:
            recipeType = @"lanch";
            break;
        case 3:
            recipeType = @"dinner";
            break;
        default:
            break;
    }
    
    NSString *request = [NSString stringWithFormat:@"recipes.%@", recipeType];
    
    names = [ClassParserJSON createArrayWithValueKeyPath:request andValueKey:@"name"];
    
    images = [ClassParserJSON createArrayWithValueKeyPath:request andValueKey:@"image"];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [names count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MenuTableViewCell *prototypeCell = [tableView dequeueReusableCellWithIdentifier:@"cellRecipe"];
    
    prototypeCell.imageMenu.image = [UIImage imageNamed:[images objectAtIndex:indexPath.row]];
    prototypeCell.labelMenu.text = [names objectAtIndex:indexPath.row];

    return prototypeCell;

}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end