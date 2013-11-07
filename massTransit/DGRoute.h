//
//  DGRoute.h
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum routeType : NSUInteger {
    tram,
    subway,
    rail,
    bus,
    ferry,
    cableCar,
    gondola,
    funicular
} routeType;

@interface DGRoute : NSObject

@property (readonly) NSString* route_id;
@property (readonly) NSString* agency_id;
@property (readonly) NSString* route_short_name;
@property (readonly) NSString* route_long_name;
@property (readonly) routeType route_type;
@property (readonly) NSString* route_url;
@property (readonly) NSString* route_color;
@property (readonly) NSString* route_text_color;

- (id) initWithRouteId: (NSString*)routeId
        andAgencyId: (NSString*)agencyId
        andShortName: (NSString*)shortName
        andLongName: (NSString*)longName
        andRouteType:(routeType)type
        andRouteUrl: (NSString*)url
        andRouteColor: (NSString*)rtColor
        andTextColor: (NSString*)txtColor;

@end
