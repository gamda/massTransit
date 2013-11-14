//
//  DGStopTimesViewController.m
//  massTransit
//
//  Created by Campus User on 11/12/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import "DGStopTimesViewController.h"

@interface DGStopTimesViewController ()

@end

@implementation DGStopTimesViewController

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

    NSArray* times = [DGStopTimes sortedArrayByDepartureTimeFromArray:[self.dbAccess timesForStop:self.myStop]];
    
    int serviceCount = [[times valueForKeyPath:@"@distinctUnionOfObjects.service_id"] count];
    
    NSMutableArray* timesById = [[NSMutableArray alloc] initWithCapacity:serviceCount];
    for (int i = 0; i < serviceCount; ++i) {
        NSMutableDictionary* placeholder = [[NSMutableDictionary alloc] init];
        NSMutableArray* data = [[NSMutableArray alloc] init];
        [placeholder setObject:data forKey:@"data"];
        NSString* none = @"none";
        [placeholder setObject:none forKey:@"serviceId"];
        [timesById addObject:placeholder];
    }
    
    bool timeAdded = NO;
    for( DGStopTimes* time in times ) {
        timeAdded = NO;
        for( NSMutableDictionary* dict in timesById ) {
            if (!timeAdded) {
                if( [time.service_id compare:[dict objectForKey:@"serviceId"]] == NSOrderedSame ) {
                    NSLog(@"%@",time.service_id);
                    [[dict objectForKey:@"data"] addObject:time];
                    timeAdded = YES;
                }
                else if( [[dict objectForKey:@"data"] count] == 0 ) {
                    // Array is empty, add new serviceId
                    [dict setObject:time.service_id forKey:@"serviceId"];
                    [[dict objectForKey:@"data"] addObject:time];
                    timeAdded = YES;
                }
            }
        }
    }
    NSLog(@"%d",[times count]);
    NSLog(@"%d",[timesById count]);
    NSLog(@"%d",[[[timesById objectAtIndex:0] objectForKey:@"data"] count]);
    NSLog(@"%d",[[[timesById objectAtIndex:1] objectForKey:@"data"] count]);
    NSLog(@"%d",[[[timesById objectAtIndex:2] objectForKey:@"data"] count]);
    
    self.stopTimes = timesById;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    self.stopTimes = nil;
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
// #warning Potentially incomplete method implementation.
    // Return the number of sections.
    return [self.stopTimes count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
// #warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [[[self.stopTimes objectAtIndex:section] objectForKey:@"data"] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"timeForStop";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    if (cell == nil) {
		// Use the default cell style.
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier];
    }
    DGStopTimes* time = [[[self.stopTimes objectAtIndex:indexPath.section] objectForKey:@"data" ] objectAtIndex:indexPath.row];
    cell.textLabel.text = time.departure_time;
    // cell.detailTextLabel.text = [[self.stopTimes objectAtIndex:indexPath.section] objectForKey:@"serviceId"];
    
    return cell;
}

- (NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [[self.stopTimes objectAtIndex:section] objectForKey:@"serviceId"];
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

@end
