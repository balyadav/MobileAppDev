//
//  AddViewController.h
//  Test0606
//
//  Created by Baljeet Yadav on 6/9/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThirdTableViewController.h"

@interface AddViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *eventName;
@property (weak, nonatomic) IBOutlet UITextField *eventDate;
@property (weak, nonatomic) IBOutlet UITextField *eventLocation;
- (IBAction)saveEvent:(id)sender;

@end
