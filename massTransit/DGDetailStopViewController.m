//
//  DGDetailStopViewController.m
//  massTransit
//
//  Created by Campus User on 11/8/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import "DGDetailStopViewController.h"
#import "DGStopTimesViewController.h"

@interface DGDetailStopViewController ()

@end

@implementation DGDetailStopViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.lblTitle.text = self.myStop.stop_name;
    [self.map setCenterCoordinate: self.myStop.coord animated: YES];
    // self.map.region = MKCoordinateRegionMake(self.myStop.coord, MKCoordinateSpanMake(500.0, 500.0));
    self.map.region = MKCoordinateRegionMakeWithDistance(self.myStop.coord, 200, 200);
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    [annotation setCoordinate: self.myStop.coord];
    [annotation setTitle: self.myStop.stop_name];
    [self.map addAnnotation:annotation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnViewStopTImes:(id)sender {
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"stopToTimes"]) {
        DGStopTimesViewController* stopVC = segue.destinationViewController;
        stopVC.myStop = self.myStop;
        stopVC.dbAccess = (GTFSSQLiteDB*)self.dbAccess;
    }
}

@end
