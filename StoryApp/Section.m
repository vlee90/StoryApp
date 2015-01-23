//
//  Section.m
//  StoryApp
//
//  Created by Vincent Lee on 1/21/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import "Section.h"
#import "Story.h"


@implementation Section

@dynamic author;
@dynamic text;
@dynamic date;
@dynamic story;

- (Section *)initSection:(NSString *)author storyText:(NSString *)text publishedDate:(NSDate *)date inStory:(Story *)story{
    if (self = [super init]) {
        self.author = author;
        self.text = text;
        self.date = date;
        self.story = story;
    }
    return self;
}

@end
