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
        coord = CLLocationCoordinate2DMake(lat, lon);
    }
    return self;
}

- (NSString*) longitudeString{
    double theta = coord.longitude;
    double deg = floor(theta);
    double min = floor((theta - deg) * 60.0);
    double sec = floor((theta - deg - (min/60.0)) * 3600.0);
    return [NSString stringWithFormat: @"%g° %g' %g\"", deg, min, sec];
}

- (NSString*) latitudeString{
    double theta = coord.latitude;
    double deg = floor(theta);
    double min = floor((theta - deg) * 60.0);
    double sec = floor((theta - deg - (min/60.0)) * 3600.0);
    return [NSString stringWithFormat: @"%g° %g' %g\"", deg, min, sec];
}

@end
