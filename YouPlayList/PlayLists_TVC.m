//
//  PlayLists_TVC.m
//  YouPlayList
//
//  Created by Stronger Shen on 13/3/24.
//  Copyright (c) 2013年 MobileIT. All rights reserved.
//

#import "PlayLists_TVC.h"
#import "List_TVC.h"

@interface PlayLists_TVC ()

@end

@implementation PlayLists_TVC

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.title = @"My Play Lists";
    
    playLists = [NSMutableArray arrayWithObjects:
                 [NSMutableDictionary dictionaryWithObjectsAndKeys:
                  @"PL32AD21DDA508E875", @"playList_id",
                  @"Adele 21", @"playList_name",
                  nil],
                 [NSMutableDictionary dictionaryWithObjectsAndKeys:
                  @"PL900BAE9FE97D8AE1", @"playList_id",
                  @"Adele - Live At The Royal Albert Hall", @"playList_name",
                  nil],
                 [NSMutableDictionary dictionaryWithObjectsAndKeys:
                  @"PLpHXzFT8CGrOU9Ma4XKYo-HqPMo1gh_5P", @"playList_id",
                  @"iOS Dev Club 聚會，魏巍分享 2013-01-26", @"playList_name",
                  nil],
                 [NSMutableDictionary dictionaryWithObjectsAndKeys:
                  @"PLV9mlJAqqQBwH30rkYT3fisAdwiKYBgcm", @"playList_id",
                  @"名醫相隨", @"playList_name",
                  nil],
                 [NSMutableDictionary dictionaryWithObjectsAndKeys:
                  @"PLpHXzFT8CGrONQfpYrXJDavDD2WRtZOkY", @"playList_id",
                  @"蘇慧倫 20100618 Legacy+", @"playList_name",
                  nil],
                 nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [playLists count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [[playLists objectAtIndex:indexPath.row] objectForKey:@"playList_name"];
    cell.detailTextLabel.text = [[playLists objectAtIndex:indexPath.row] objectForKey:@"playList_id"];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    List_TVC *list_tvc = segue.destinationViewController;
    list_tvc.listDict = [playLists objectAtIndex:self.tableView.indexPathForSelectedRow.row];
}

@end
