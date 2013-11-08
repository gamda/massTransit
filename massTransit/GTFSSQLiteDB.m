//
//  GTFSSQLiteDB.m
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import "GTFSSQLiteDB.h"

@implementation GTFSSQLiteDB

- (NSArray*)allRoutes {
    NSMutableArray* routes = [[NSMutableArray alloc] init];
    NSString* query = @"Select route_id, route_short_name, route_long_name, route_type from routes";
    sqlite3_stmt* stmt;
    const unsigned char* text;
    NSString *routeId, *routeShortName, *routeLongName;
    routeType myRouteType;
    
    if( sqlite3_prepare_v2(_databaseConnection, [query UTF8String], [query length], &stmt, nil) == SQLITE_OK) {
        while (sqlite3_step(stmt) == SQLITE_ROW) {
            // Column 1: route_id
            text = sqlite3_column_text(stmt, 0);
            if( text )
                routeId = [NSString stringWithCString:(const char*)text encoding:NSUTF8StringEncoding];
            else
                routeId = nil;
            // Column 2: route_short_name
            text = sqlite3_column_text(stmt, 1);
            if( text )
                routeShortName = [NSString stringWithCString:(const char*)text encoding:NSUTF8StringEncoding];
            else
                routeShortName = nil;
            // Column 3: route_long_name
            text = sqlite3_column_text(stmt, 2);
            if( text )
                routeLongName = [NSString stringWithCString:(const char*)text encoding:NSUTF8StringEncoding];
            else
                routeLongName = nil;
            // Column 4: route_type
            myRouteType = sqlite3_column_int(stmt, 3);
            
            // Add route to Array
            DGRoute* newRoute = [[DGRoute alloc] initWithRouteId:routeId
                                                    andShortName:routeShortName
                                                    andLongName:routeLongName
                                                    andRouteType:myRouteType];
            [routes addObject:newRoute];
        }
        sqlite3_finalize(stmt);
    }
    return routes;
}

- (NSArray*)stopsForRoute:(DGRoute*)rt {
    NSMutableArray* stops = [[NSMutableArray alloc] init];
    sqlite3_stmt* stmt;
    const unsigned char* text;
    
    NSString *stopId, *stopName;
    double stopLat, stopLon;
    NSString* query = [NSString stringWithFormat:@"select distinct stops.stop_id, stop_name, stop_lat, stop_lon from stop_times, stops, trips where trips.trip_id=stop_times.trip_id and stop_times.stop_id=stops.stop_id and route_id=\"%@\" order by stops.stop_id",[rt route_id]] ;
    if( sqlite3_prepare_v2(_databaseConnection, [query UTF8String], [query length], &stmt, nil) == SQLITE_OK) {
        while (sqlite3_step(stmt) == SQLITE_ROW) {
            // Column 1: stop_id
            text = sqlite3_column_text(stmt, 0);
            if( text )
                stopId = [NSString stringWithCString:(const char*)text encoding:NSUTF8StringEncoding];
            else
                stopId = nil;
            // Column 2: stop_name
            text = sqlite3_column_text(stmt, 1);
            if( text )
                stopName = [NSString stringWithCString:(const char*)text encoding:NSUTF8StringEncoding];
            else
                stopName = nil;
            // Column 3: stop_lat
            stopLat = sqlite3_column_double(stmt, 2);
            // Column 4: stop_lon
            stopLon = sqlite3_column_double(stmt, 3);
            
            // Add stop to array
            DGStop* newStop = [[DGStop alloc] initWithId:stopId
                                                andName:stopName
                                                andLon:stopLon
                                                andLat:stopLat];
            [stops addObject:newStop];
        }
        sqlite3_finalize(stmt);
    }
    return stops;
}

- (NSArray*)timesForStop: (DGStop*)stop {
    NSMutableArray* times = [[NSMutableArray alloc] init];
    NSString* query = [NSString stringWithFormat:@"select trip_id, arrival_time, departure_time, stop_id, stop_sequence from stop_times where stop_id = %s",[stop.stop_id UTF8String]];
    sqlite3_stmt* stmt;
    const unsigned char* text;
    NSString *arrival, *departure, *stopId;
    int tripId, stopSequence = 0;
    
    if( sqlite3_prepare_v2(_databaseConnection, [query UTF8String], [query length], &stmt, nil) == SQLITE_OK) {
        while (sqlite3_step(stmt) == SQLITE_ROW) {
            // Column 1: trip_id
            tripId = sqlite3_column_int(stmt, 0);
            // Column 2: arrival_time
            text = sqlite3_column_text(stmt, 1);
            if( text )
                arrival = [NSString stringWithCString:(const char*)text encoding:NSUTF8StringEncoding];
            else
                arrival = nil;
            // Column 3: departure_time
            text = sqlite3_column_text(stmt, 2);
            if( text )
                departure = [NSString stringWithCString:(const char*)text encoding:NSUTF8StringEncoding];
            else
                departure = nil;
            // Column 4: stop_id
            text = sqlite3_column_text(stmt, 3);
            if( text )
                stopId = [NSString stringWithCString:(const char*)text encoding:NSUTF8StringEncoding];
            else
                stopId = nil;
            // Column 5: stop_sequence
            stopSequence = sqlite3_column_int(stmt, 4);
            
            // Add time schedule to array
            DGStopTimes* newTime = [[DGStopTimes alloc] initWithTripId:tripId
                                                       andArrivalTime:arrival
                                                       andDepartureTime:departure
                                                       andStopId:stopId andStopSequence:stopSequence];
            [times addObject:newTime];
        }
        sqlite3_finalize(stmt);
    }
    return times;
}

@end
