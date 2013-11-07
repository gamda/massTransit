//
//  DGStop.h
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface DGStop : NSObject

@property (readonly) NSString* stop_id;
@property (readonly) NSString* stop_name;
@property (readonly) CLLocationCoordinate2D coord;
@property (readonly) NSString* zone_id;
@property (readonly) NSString* stop_url;

- (id) initWithId: (NSString*) Id
        andName: (NSString*) name
        andLon: (double) lon
        andLat: (double) lat
        andZoneId: (NSString*) zoneId
        andStopUrl: (NSString*)stopUrl;

@end
