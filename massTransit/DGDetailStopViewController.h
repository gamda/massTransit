//
//  DGDetailStopViewController.h
//  massTransit
//
//  Created by Campus User on 11/8/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "GTFSSQLiteDB.h"
#import "DGStop.h"

@interface DGDetailStopViewController : UIViewController

@property (retain,nonatomic) GTFSSQLiteDB* dbAccess;

@property (retain,nonatomic) DGStop* myStop;

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;
@property (weak, nonatomic) IBOutlet MKMapView *map;

- (IBAction)btnViewStopTImes:(id)sender;

@end
