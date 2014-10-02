//
//  PersonQuery.h
//  test2323
//
//  Created by Robert Gross on 10/1/14.
//  Copyright (c) 2014 GrossINC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
typedef void (^GetPeopleBlock)(NSArray *people);

@interface PersonQuery : NSObject
-(void)getAllUsers:(GetPeopleBlock)block;
@end
