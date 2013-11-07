//
//  DGTrip.h
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DGTrip : NSObject

@property (readonly) NSString* route_id;
@property (readonly) NSString* service_id;
@property (readonly) int trip_id;
/*
@property (readonly) NSString* trip_headsign;
@property (readonly) NSString* direction_id;
@property (readonly) NSString* block_id;
@property (readonly) NSString* shape_id;
 */

- (id) initWithRouteId: (NSString*) routeId
        andServiceId: (NSString*) serviceId
        andTripId: (int)tripId;

@end

// trips (route_id TEXT, service_id TEXT, trip_id INTEGER, trip_headsign TEXT, direction_id TEXT, block_id TEXT, shape_id TEXT);