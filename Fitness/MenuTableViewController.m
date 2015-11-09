//
//  MenuTableViewController.m
//  Fitness
//
//  Created by Admin on 06.11.15.
//  Copyright © 2015 Admin. All rights reserved.
//


#import "MenuTableViewController.h"


@interface MenuTableViewController () {
    
    NSArray *imagesArray;
    NSArray *highlightedImagesArray;
    NSArray *captionsMenu;
    
}

@end


@implementation MenuTableViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    imagesArray = @[@"breakfast@2x.png",
                    @"secondBreakfast@2x.png",
                    @"lanch@2x.png",
                    @"dinner@2x.png"];
    
    highlightedImagesArray = @[@"breakfastHighlighted@2x.png",
                    @"secondBreakfastHighlighted@2x.png",
                    @"lanchHighlighted@2x.png",
                    @"dinnerHighlighted@2x.png"];
    
    captionsMenu = @[@"ЗАВТРАК",
                     @"ВТОРОЙ ЗАВТРАК",
                     @"ОБЕД",
                     @"УЖИН",];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 4;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MenuTableViewCell *prototypeCell = [tableView dequeueReusableCellWithIdentifier:@"cellMenu"];

    prototypeCell.imageMenu.image = [UIImage imageNamed:[imagesArray objectAtIndex:indexPath.row]];
    prototypeCell.imageMenu.highlightedImage = [UIImage imageNamed:[highlightedImagesArray objectAtIndex:indexPath.row]];
    prototypeCell.labelMenu.text  = [captionsMenu objectAtIndex:indexPath.row];
    
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
    
    if ([segue.identifier isEqualToString:@"segueRecipes"]) {
        
        NSIndexPath *indexPath = [_table indexPathForSelectedRow];
        [segue.destinationViewController setMenuType:(int)indexPath.row];
        
    }
    
}

@end