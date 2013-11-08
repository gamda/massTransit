//
//  DGOctaStopViewController.h
//  massTransit
//
//  Created by Campus User on 11/7/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DGOctaDb.h"

@interface DGOctaStopViewController : UITableViewController
{
    DGOctaDb* dbAccess;
}

@property (retain,nonatomic) NSArray* stops;
@property (retain,nonatomic) DGRoute* myRoute;

@end
