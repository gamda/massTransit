//
//  DGTrip.m
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import "DGTrip.h"

@implementation DGTrip

@synthesize route_id, service_id, trip_id, trip_headsign;
@synthesize direction_id, block_id, shape_id;

- (id) initWithRouteId: (NSString*) routeId
          andServiceId: (NSString*) serviceId
             andTripId: (int)tripId
       andTripHeadSign: (NSString*) headSign
        andDirectionId: (NSString*) dirId
            andBlockId: (NSString*) blockId
            andShapeId: (NSString*) shapeId
{
    self = [super init];
    if (self != nil) {
        route_id = routeId;
        service_id = serviceId;
        trip_id = tripId;
        trip_headsign = headSign;
        direction_id = dirId;
        block_id = blockId;
        shape_id = shapeId;
    }
    return self;
}

@end
