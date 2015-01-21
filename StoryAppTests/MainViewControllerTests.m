//
//  MainViewControllerTests.m
//  StoryApp
//
//  Created by Vincent Lee on 1/20/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "MainViewController.h"

@interface MainViewControllerTests : XCTestCase

@property (strong, nonatomic) UIStoryboard* storyboard;
@property (strong, nonatomic) UIViewController* mainViewController;

@end

@implementation MainViewControllerTests

- (void)setUp {
    [super setUp];
    self.storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.mainViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SBMainVC"];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    self.storyboard = nil;
    self.mainViewController = nil;
}

- (void)testTextView {
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
