//
//  MainViewModelTests.m
//  StoryApp
//
//  Created by Vincent Lee on 1/21/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "MainViewModel.h"
#import "Story.h"

@interface MainViewModelTests : XCTestCase

@property (strong, nonatomic) MainViewModel* mainViewModel;

@end

@implementation MainViewModelTests

- (void)setUp {
    [super setUp];
    self.mainViewModel = [[MainViewModel alloc] init];
}

- (void)tearDown {
    [super tearDown];
    self.mainViewModel = nil;
}

- (void)testMainViewModelExists {
    XCTAssertNotNil(self.mainViewModel, @"MainViewModel should not be nil");
}

- (void)testSubmitButtonCreatesAStory {
//    Story* story = [self.mainViewModel createAStory];
//    XCTAssertEqualObjects(story, [Story class], @"This should create a Story Object");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
