//
//  FirstViewController.m
//  Test0606
//
//  Created by Baljeet Yadav on 6/9/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UITextView *dateTime;
@property (weak, nonatomic) IBOutlet UITextView *deviceInfo;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSTimeZone* timeZone = [NSTimeZone timeZoneWithAbbreviation:@"EST"];
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:timeZone];
    [dateFormatter setDateFormat:@"yyyy-MM-dd hh:mm:ss a"];
    NSString *dateTimeString = [dateFormatter stringFromDate:[NSDate date]];
    NSString *version = [[UIDevice currentDevice] systemVersion] ;
    NSString *deviceType = [[UIDevice currentDevice] model];
    NSString *deviceConcatenatedString = [NSString stringWithFormat:@"%@ %@", deviceType, version];
    self.dateTime.text = dateTimeString;
    self.deviceInfo.text = deviceConcatenatedString;
    
    NSLog(@"\n%@\n %@\n %@\n andrewID: byadav", dateTimeString, timeZone,deviceConcatenatedString);
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

@end
