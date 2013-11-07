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

@interface GTFSSQLiteDB : SQLiteDB

- (id)initWithDB: (NSString*)dbFile;
- (NSArray*)allRoutes;
- (NSArray*)stopsForRoute:(DGRoute*)rt;
- (NSArray*)timesForStop: (DGStop*)stop;

@end