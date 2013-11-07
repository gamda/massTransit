//
//  DGStop.m
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import "DGStop.h"
#import <CoreLocation/CoreLocation.h>

@implementation DGStop

@synthesize stop_id, stop_name, coord;

- (id) initWithId: (NSString*) Id
          andName: (NSString*) name
           andLon: (double) lon
           andLat: (double) lat {
    self = [super init];
    if (self != nil) {
        stop_id = Id;
        stop_name = name;
        coord = CLLocationCoordinate2DMake(lon, lat);
    }
    return self;
}

@end
