//
//  LoginViewModel.h
//  StoryApp
//
//  Created by Vincent Lee on 1/21/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface LoginViewModel : NSObject

-(BOOL)isUsernameValid:(NSString*)username;
-(BOOL)isPasswordValid:(NSString*)password;
-(User*)createUserWithName:(NSString*)name withPassword:(NSString*)password;



@end
