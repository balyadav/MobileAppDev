//
//  ThirdTableViewController.h
//  Test0606
//
//  Created by Baljeet Yadav on 6/9/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "AddViewController.h"
#import "Event.h"


@interface ThirdTableViewController : UITableViewController<NSFetchedResultsControllerDelegate>

//CoreData
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (nonatomic) BOOL suspendAutomaticTrackingOfChangesInManagedObjectContext;
- (void)insertNewObjectEventName:(NSString *)eventName eventTime:(NSString *)eventTime eventLocation:(NSString*)eventLocation;

@end
