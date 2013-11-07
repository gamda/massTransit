//
//  DGRoute.m
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import "DGRoute.h"

@implementation DGRoute

@synthesize route_id, agency_id, route_short_name, route_long_name, route_type;
@synthesize route_url, route_color, route_text_color;

- (id) initWithRouteId: (NSString*)routeId
           andAgencyId: (NSString*)agencyId
          andShortName: (NSString*)shortName
           andLongName: (NSString*)longName
          andRouteType:(routeType)type
           andRouteUrl: (NSString*)url
         andRouteColor: (NSString*)rtColor
          andTextColor: (NSString*)txtColor {
    self = [super init];
    if (self != nil) {
        route_id = routeId;
        agency_id = agencyId;
        route_short_name = shortName;
        route_long_name = longName;
        route_type = type;
        route_url = url;
        route_color = rtColor;
        route_text_color = txtColor;
    }
    return self;
}

@end
