//
//  SQLiteDB.m
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import "SQLiteDB.h"

@implementation SQLiteDB

static SQLiteDB* _databaseObj;

+ (SQLiteDB*) databaseWithFile: (NSString*) dbFile
{
    if (_databaseObj == nil) {
        _databaseObj = [[SQLiteDB alloc] initWithDB:dbFile];
    }
    return _databaseObj;
}

- (id)initWithDB: (NSString*)dbFile {
    self = [super init];
    if (self) {
        NSString* dbpath = [[NSBundle mainBundle] pathForResource:dbFile ofType:@"sl3"];
        if (sqlite3_open([dbpath UTF8String], &_databaseConnection) != SQLITE_OK) {
            NSLog(@"Failed to open database.");
        }
    }
    return self;
}

- (void) dealloc
{
    sqlite3_close(_databaseConnection);
}

@end
