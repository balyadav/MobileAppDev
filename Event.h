//
//  Event.h
//  Test0606
//
//  Created by Baljeet Yadav on 6/9/17.
//  Copyright © 2017 CarnegieMellonUniversity. All rights reserved.
//

#import <CoreData/CoreData.h>
#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface Event : NSManagedObject
@property (nonatomic, retain) NSString *eventName;
@property (nonatomic, retain) NSString *eventTime;
@property (nonatomic, retain) NSString *eventLocation;
@end
