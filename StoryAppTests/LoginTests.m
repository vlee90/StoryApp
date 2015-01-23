//
//  LoginTests.m
//  StoryApp
//
//  Created by Vincent Lee on 1/21/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "LoginViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface LoginTests : XCTestCase

@property (strong, nonatomic) LoginViewModel* loginViewModel;

@end

@implementation LoginTests

- (void)setUp {
    [super setUp];
    self.loginViewModel = [[LoginViewModel alloc] init];
}

- (void)tearDown {
    [super tearDown];
    self.loginViewModel = nil;
}

-(void)testLoginViewModelExists {
    XCTAssertNotNil(self.loginViewModel, @"LoginViewModel should not be nil");
}

-(void)testUsernameIsValid {
    //Rule: Username must be longer than 3 characters:
    NSString* goodUsername = @"Vincent";
    NSString* badUsername = @"Vin";
    BOOL validUsername = [self.loginViewModel isUsernameValid:goodUsername];
    XCTAssertTrue(validUsername, @"ValidUsername should be true");
    BOOL invalidUsername = [self.loginViewModel isUsernameValid:badUsername];
    XCTAssertFalse(invalidUsername, @"InvalidUsername should be false");
}

-(void)testPasswordIsValid {
    //Rule: Password must be longer than 6 characters:
    NSString* goodPassword = @"1234567";
    NSString* badPassword = @"123";
    BOOL validPassword = [self.loginViewModel isPasswordValid:goodPassword];
    XCTAssertTrue(validPassword, @"ValidPassword should be true");
    BOOL invalidPassword = [self.loginViewModel isPasswordValid:badPassword];
    XCTAssertFalse(invalidPassword, @"InvalidPassword should be false");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
