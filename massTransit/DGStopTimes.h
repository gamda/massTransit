//
//  DGStopTimes.h
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DGStopTimes : NSObject

@property (readonly) int trip_id;
@property (readonly) NSString* arrival_time;
@property (readonly) NSString* departure_time;
@property (readonly) NSString* stop_id;
@property (readonly) int stop_sequence;
// Excluded optional fields

- (id) initWithTripId: (int) tripId
       andArrivalTime: (NSString*) arrivalTime
        andDepartureTime: (NSString*) departureTime
        andStopId: (NSString*) stopId
        andStopSequence: (int) stopSequence;

@end

/*
 CREATE TABLE stop_times (trip_id INTEGER, arrival_time TEXT, departure_time TEXT, stop_id TEXT, stop_sequence INTEGER, stop_headsign TEXT, pickup_type TEXT, arrival_secs TEXT, departure_secs TEXT);
 */
