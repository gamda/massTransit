//
//  DGOctaRouteViewController.h
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DGOctaDb.h"

@interface DGOctaRouteViewController : UITableViewController
{
    DGOctaDb* dbAccess;
}

@property (retain,nonatomic) NSArray* routes;

@end
