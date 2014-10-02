//
//  Person.h
//  test2323
//
//  Created by Robert Gross on 10/1/14.
//  Copyright (c) 2014 GrossINC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIColor.h>

@interface Person : NSObject
@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (strong, nonatomic) NSString *personalBio;
@property (strong, nonatomic) UIColor *favoriteColor;
@property (strong, nonatomic) UIColor *secondFavoriteColor;
@end
