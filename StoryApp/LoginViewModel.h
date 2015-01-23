//
//  LoginViewModel.h
//  StoryApp
//
//  Created by Vincent Lee on 1/21/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginViewModel : NSObject

-(BOOL)isUsernameValid:(NSString*)username;
-(BOOL)isPasswordValid:(NSString*)password;

@end
