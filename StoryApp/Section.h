//
//  Section.h
//  StoryApp
//
//  Created by Vincent Lee on 1/21/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Story;

@interface Section : NSManagedObject

@property (nonatomic, retain) NSString * author;
@property (nonatomic, retain) NSString * text;
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) Story *story;

- (Section*)initSection:(NSString*)author storyText:(NSString*)text publishedDate:(NSDate*)date inStory:(Story*)story;

@end
