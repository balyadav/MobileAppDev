//
//  AddViewController.m
//  Test0606
//
//  Created by Baljeet Yadav on 6/9/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()

@end

@implementation AddViewController
@synthesize eventName = _eventName;
@synthesize eventDate = _eventDate;
@synthesize eventLocation = _eventLocation;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveEvent:(id)sender {
    NSString *eventName=_eventName.text;
    NSString *eventTime=_eventDate.text;
    NSString *eventLocation=_eventLocation.text;
    
    // Get Master view controller
    ThirdTableViewController *masterController =(ThirdTableViewController*)[self.navigationController.viewControllers objectAtIndex:self.navigationController.viewControllers.count-2];
    self.navigationController.viewControllers.count-1;
    
    [masterController insertNewObjectEventName:eventName eventTime:eventTime eventLocation:eventLocation];
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
