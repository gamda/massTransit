//
//  DGStopTimesViewController.h
//  massTransit
//
//  Created by Campus User on 11/12/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DGStop.h"
#import "DGStopTimes.h"
#import "GTFSSQLiteDB.h"

@interface DGStopTimesViewController : UITableViewController

@property (retain,nonatomic) GTFSSQLiteDB* dbAccess;
@property (retain,nonatomic) DGStop* myStop;

@property (retain,nonatomic) NSArray* stopTimes;

@end
