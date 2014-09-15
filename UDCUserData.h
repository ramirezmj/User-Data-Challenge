//
//  UDCUserData.h
//  User Data Challenge
//
//  Created by Jose Manuel Ramirez Martinez on 15/09/14.
//  Copyright (c) 2014 Jose Manuel Ramírez Martínez. All rights reserved.
//

#import <Foundation/Foundation.h>

#define USER_NAME               @"username"
#define USER_EMAIL              @"email"
#define USER_PASSWORD           @"password"
#define USER_AGE                @"age"
#define USER_PROFILE_PICTURE    @"profilePicture"

@interface UDCUserData : NSObject

+(NSArray *)users;

@end
