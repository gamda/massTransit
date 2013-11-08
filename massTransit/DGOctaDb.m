//
//  DGOctaDb.m
//  massTransit
//
//  Created by Campus User on 11/6/13.
//  Copyright (c) 2013 gamda. All rights reserved.
//

#import "DGOctaDb.h"

@implementation DGOctaDb

+ (DGOctaDb*) databaseConnection
{
    return [super databaseWithFile:@"OCTA"];
}

- (id) init{
    self = [super initWithDB:@"OCTA"];
    NSLog(@"%@",[self description]);
    return self;
}

@end
