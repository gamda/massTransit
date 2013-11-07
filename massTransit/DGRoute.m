//
//  DGRoute.m
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import "DGRoute.h"

@implementation DGRoute

@synthesize route_id, route_short_name, route_long_name, route_type;

- (id) initWithRouteId: (NSString*)routeId
          andShortName: (NSString*)shortName
           andLongName: (NSString*)longName
          andRouteType:(routeType)type {
    self = [super init];
    if (self != nil) {
        route_id = routeId;
        route_short_name = shortName;
        route_long_name = longName;
        route_type = type;
    }
    return self;
}

@end
