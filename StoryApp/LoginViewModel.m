//
//  LoginViewModel.m
//  StoryApp
//
//  Created by Vincent Lee on 1/21/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import "LoginViewModel.h"

@implementation LoginViewModel

-(BOOL)isUsernameValid:(NSString *)username {
    if ([username length] > 3) {
        return true;
    }
    else {
        return false;
    }
}

-(BOOL)isPasswordValid:(NSString *)password {
    if ([password length] > 6) {
        return true;
    }
    else {
        return false;
    }
}

@end
