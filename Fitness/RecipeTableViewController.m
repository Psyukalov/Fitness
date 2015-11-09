//
//  RecipeTableViewController.m
//  Fitness
//
//  Created by Admin on 06.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "RecipeTableViewController.h"


@interface RecipeTableViewController () {
    
    ClassRecipe *recipes;
//    NSArray *names;
//    NSArray *images;
    
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
    
    recipes = [[ClassRecipe alloc] init];
    
    recipes.name = [ClassParserJSON createArrayWithValueKeyPath:request andValueKey:@"name"];
    recipes.image = [ClassParserJSON createArrayWithValueKeyPath:request andValueKey:@"image"];
    recipes.ingridients = [ClassParserJSON createArrayWithValueKeyPath:request andValueKey:@"ingridients"];
    recipes.textRecipe = [ClassParserJSON createArrayWithValueKeyPath:request andValueKey:@"recipe"];
    
//    names = [ClassParserJSON createArrayWithValueKeyPath:request andValueKey:@"name"];
//    images = [ClassParserJSON createArrayWithValueKeyPath:request andValueKey:@"image"];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [recipes.name count];
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MenuTableViewCell *prototypeCell = [tableView dequeueReusableCellWithIdentifier:@"cellRecipe"];
    
    prototypeCell.imageMenu.image = [UIImage imageNamed:[recipes.image objectAtIndex:indexPath.row]];
    prototypeCell.labelMenu.text = [recipes.name objectAtIndex:indexPath.row];

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:@"segueDetailRecipe"]) {
        
        NSIndexPath *indexPath = [_tableRecipe indexPathForSelectedRow];
        [segue.destinationViewController setT1:recipes.name[indexPath.row]];
        [segue.destinationViewController setT2:recipes.image[indexPath.row]];
        [segue.destinationViewController setT3:recipes.ingridients[indexPath.row]];
        [segue.destinationViewController setT4:recipes.textRecipe[indexPath.row]];
        
    }
    
}

@end