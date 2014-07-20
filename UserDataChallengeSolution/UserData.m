//
//  UserData.m
//  UserDataChallengeSolution
//
//  Created by Luis Carbuccia on 7/20/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "UserData.h"

@implementation UserData

+ (NSArray *)users
{
    NSDictionary *user1 = @{USERNAME : @"Looneylu", PASSWORD: @"tooCoolForSchool", EMAIL : @"looneylu@aol.com", AGE : @34, PROFILE_PICTURE : [UIImage imageNamed:@"person1.jpeg"]};
    
    NSDictionary *user2 = @{USERNAME : @"KrazyKay", PASSWORD : @"sacoca", EMAIL : @"kaykay@gmail.com", AGE : @10, PROFILE_PICTURE : [UIImage imageNamed:@"person2.jpeg"]};
    
    NSDictionary *user3 = @{USERNAME : @"CandyMiss", PASSWORD : @"caralu", EMAIL : @"candida@gmail.com", AGE : @24, PROFILE_PICTURE : [UIImage imageNamed:@"person3.jpg"]};
    
    NSArray *myArray = @[user1, user2, user3];
    
    return myArray;
}

@end
