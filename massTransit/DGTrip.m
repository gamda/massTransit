//
//  DGTrip.m
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import "DGTrip.h"

@implementation DGTrip

@synthesize route_id, service_id, trip_id;

- (id) initWithRouteId: (NSString*) routeId
          andServiceId: (NSString*) serviceId
             andTripId: (int)tripId
{
    self = [super init];
    if (self != nil) {
        route_id = routeId;
        service_id = serviceId;
        trip_id = tripId;
    }
    return self;
}

@end
