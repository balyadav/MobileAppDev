//
//  SecondTableViewController.m
//  Test0606
//
//  Created by Baljeet Yadav on 6/8/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import "SecondTableViewController.h"

@interface SecondTableViewController ()

@end

@implementation SecondTableViewController

-(id)init{
    self = [super init];
    if(self)
    {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self init];
    self.events = @[@"Kick-Off Rally",
                @"Blacktie & Tailpipes Gala",
                @"Historics at Pitt Race Weekend "];
    self.eventDates = @[@"Sunday, July 2",
                    @"July 7",
                    @"July 7-9"];
    self.eventLocations = @[@"TBD", @"TBD", @"Pittsburgh International Race Complex"];
    self.title=@"PVGP Events";
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self logTheEvents];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
//    return 0;
    return self.events.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString * CellIdentifier =@"idntfr";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    if (cell == nil) {
        NSLog(@"Nil condition met");
    }
     //Configure the cell...
    cell.textLabel.text =[self.events objectAtIndex:indexPath.row];
    NSString *dateString = [self.eventDates objectAtIndex:indexPath.row];
    NSString *locationString = [self.eventLocations objectAtIndex:indexPath.row];
    NSString *subtitleToDisplay = [dateString stringByAppendingString:@" at "];
    subtitleToDisplay = [subtitleToDisplay stringByAppendingString:locationString];
    cell.detailTextLabel.text=subtitleToDisplay;
    return cell;
}

- (void) logTheEvents{
    for(int i = 0; i < self.events.count; i++){
        NSLog(@"%@ \n %@ at %@", [self.events objectAtIndex:i], [self.eventDates objectAtIndex:i], [self.eventLocations objectAtIndex:i]);
    }
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
;