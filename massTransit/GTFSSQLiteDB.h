//
//  GTFSSQLiteDB.h
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import "SQLiteDB.h"
#import "DGRoute.h"
#import "DGStop.h"
#import "DGTrip.h"
#import "DGStopTimes.h"

typedef enum serviceDays : NSUInteger {
    weekdays = 0,
    saturday,
    sunday,
} serviceDays;

@interface GTFSSQLiteDB : SQLiteDB

- (NSArray*)allRoutes;
- (NSArray*)stopsForRoute:(DGRoute*)rt;
- (NSArray*)timesForStop: (DGStop*)stop;
- (NSArray*)timesForStop:(DGStop *)stop andServiceDays: (serviceDays) service;
- (NSString*)queryStringForServiceDay: (serviceDays) service;
- (NSString*)service_idForTripId: (int)tripId;

@end
