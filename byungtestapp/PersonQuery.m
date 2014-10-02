//
//  PersonQuery.m
//  test2323
//
//  Created by Robert Gross on 10/1/14.
//  Copyright (c) 2014 GrossINC. All rights reserved.
//

#import "PersonQuery.h"
#import "FakePeopleDatabase.h"

@implementation PersonQuery
-(void)getAllUsers:(GetPeopleBlock)block;
{
    if (block == nil) {
        return;
    }
    FakePeopleDatabase *database = [[FakePeopleDatabase alloc] init];
    NSArray *listOfPeople =[database findAllUsersInDataBase];
    block(listOfPeople);
}
@end
