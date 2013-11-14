//
//  DGStopTimes.m
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import "DGStopTimes.h"

@implementation DGStopTimes

@synthesize trip_id, arrival_time, departure_time, stop_id, stop_sequence, service_id;

- (id) initWithTripId: (int) tripId
       andArrivalTime: (NSString*) arrivalTime
       andDepartureTime: (NSString*) departureTime
        andStopId: (NSString*) stopId
        andStopSequence: (int) stopSequence
        andServiceId: (NSString*)serviceId
{
    self = [super init];
    if (self != nil) {
        trip_id = tripId;
        arrival_time = arrivalTime;
        departure_time = departureTime;
        stop_id = stopId;
        stop_sequence = stopSequence;
        service_id = serviceId;
    }
    return self;
}

+ (NSArray*)sortedArrayByDepartureTimeFromArray: (NSArray*) timeArray {
    NSSortDescriptor *valueDescriptor = [[NSSortDescriptor alloc] initWithKey:@"departure_time" ascending:YES];
    NSArray * descriptors = [NSArray arrayWithObject:valueDescriptor];
    return [timeArray sortedArrayUsingDescriptors:descriptors];
}

@end
