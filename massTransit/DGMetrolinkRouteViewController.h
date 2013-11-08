//
//  DGMetrolinkRouteViewController.h
//  massTransit
//
//  Created by Campus User on 11/7/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DGMetrolinkDb.h"

@interface DGMetrolinkRouteViewController : UITableViewController
{
    DGMetrolinkDb* dbAccess;
}

@property (retain,nonatomic) NSArray* routes;

@end
