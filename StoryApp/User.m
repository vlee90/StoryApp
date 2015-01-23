//
//  User.m
//  StoryApp
//
//  Created by Vincent Lee on 1/21/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import "User.h"


@implementation User

@dynamic name;
@dynamic password;
@dynamic stories;

-(instancetype)initWithName:(NSString*)name withPassword:(NSString*)password {
    if (self = [super init]) {
        self.name = name;
        self.password = password;
    }
    return self;
}

@end
