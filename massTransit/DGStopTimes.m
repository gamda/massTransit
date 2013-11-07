//
//  DGStopTimes.m
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import "DGStopTimes.h"

@implementation DGStopTimes

@synthesize trip_id, arrival_time, departure_time, stop_id, stop_sequence;

- (id) initWithTripId: (int) tripId
       andArrivalTime: (NSString*) arrivalTime
       andDepartureTime: (NSString*) departureTime
        andStopId: (NSString*) stopId
        andStopSequence: (int) stopSequence
{
    self = [super init];
    if (self != nil) {
        trip_id = tripId;
        arrival_time = arrivalTime;
        departure_time = departureTime;
        stop_id = stopId;
        stop_sequence = stopSequence;
    }
    return self;
}

@end
