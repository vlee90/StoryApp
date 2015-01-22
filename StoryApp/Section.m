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

- (instancetype)initSection:(NSString *)author storyText:(NSString *)text publishedDate:(NSDate *)date inStory:(Story *)story{
    Section* section = [[Section alloc] init];
    section.author = author;
    section.text = text;
    section.date = date;
    section.story = story;
    return section;
}

@end
