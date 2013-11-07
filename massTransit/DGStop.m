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
@synthesize zone_id, stop_url;

- (id) initWithId: (NSString*) Id
        andName: (NSString*) name
        andLon: (double) lon
        andLat: (double) lat
        andZoneId: (NSString*) zoneId
        andStopUrl: (NSString*)stopUrl {
    self = [super init];
    if (self != nil) {
        stop_id = Id;
        stop_name = name;
        coord = CLLocationCoordinate2DMake(lon, lat);
        zone_id = zoneId;
        stop_url = stopUrl;
    }
    return self;
}

@end
