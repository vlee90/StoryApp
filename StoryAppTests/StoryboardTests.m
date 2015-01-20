//
//  StoryboardTests.m
//  StoryApp
//
//  Created by Vincent Lee on 1/20/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface StoryboardTests : XCTestCase

@property (strong, nonatomic) UIStoryboard* storyboard;
@property (strong, nonatomic) UITabBarController* tabBarController;
@property (strong, nonatomic) UIViewController* mainViewController;
@property (strong, nonatomic) UIViewController* storiesViewController;
@property (strong, nonatomic) UIViewController* settingsViewController;
@property (strong, nonatomic) UIViewController* loginViewController;
@property (strong, nonatomic) UIViewController* storyViewController;

@end

@implementation StoryboardTests

- (void)setUp {
    [super setUp];
    self.storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.tabBarController = [self.storyboard instantiateViewControllerWithIdentifier:@"SBTabBarController"];
    self.mainViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SBMainVC"];
    self.storiesViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SBStoriesVC"];
    self.settingsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SBSettingsVC"];
    self.loginViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SBLoginVC"];
    self.storyViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SBStoryVC"];
    
}

- (void)tearDown {
    [super tearDown];
    self.storyboard = nil;
    self.tabBarController = nil;
    self.mainViewController = nil;
    self.storiesViewController = nil;
    self.settingsViewController = nil;
    self.loginViewController = nil;
    self. storyViewController = nil;
}

- (void)testStoryboardObjectsExist {
    XCTAssertNotNil(self.storyboard, @"Storyboard should not be nil");
    XCTAssertNotNil(self.tabBarController, @"TabbarController should not be nil");
    XCTAssertNotNil(self.mainViewController, @"MainViewController should not be nil");
    XCTAssertNotNil(self.storiesViewController, @"StoriesViewController should not be nil");
    XCTAssertNotNil(self.settingsViewController, @"SettingsViewController should not be nil");
    XCTAssertNotNil(self.loginViewController, @"LoginViewController should not be nil");
    XCTAssertNotNil(self.storyViewController, @"StoryViewController should not be nil");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
