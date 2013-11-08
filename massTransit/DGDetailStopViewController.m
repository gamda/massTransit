//
//  DGDetailStopViewController.m
//  massTransit
//
//  Created by Campus User on 11/8/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import "DGDetailStopViewController.h"

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
    self.lblLocation.text = [NSString stringWithFormat: @"%@, %@", self.myStop.latitudeString, self.myStop.longitudeString];
    [self.map setCenterCoordinate: self.myStop.coord animated: YES];
    self.map.region = MKCoordinateRegionMake(self.myStop.coord, MKCoordinateSpanMake(0.5, 0.5));
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

@end
