//
//  SQLiteDB.h
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface SQLiteDB : NSObject
{
    sqlite3* _databaseConnection;
}

+ (SQLiteDB*) databaseWithFile: (NSString*) dbFile;

- (id)initWithDB: (NSString*)dbFile;

@end
