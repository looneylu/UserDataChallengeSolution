//
//  UserData.h
//  UserDataChallengeSolution
//
//  Created by Luis Carbuccia on 7/20/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import <Foundation/Foundation.h>


#define USERNAME @"Username"
#define PASSWORD @"Password"
#define EMAIL @"Email"
#define AGE @"Age"
#define PROFILE_PICTURE @"Profile Picture"

@interface UserData : NSObject

+ (NSArray *) users;

@end
