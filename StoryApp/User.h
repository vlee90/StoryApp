//
//  User.h
//  StoryApp
//
//  Created by Vincent Lee on 1/21/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface User : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * password;
@property (nonatomic, retain) NSSet *stories;
@end

@interface User (CoreDataGeneratedAccessors)

- (void)addStoriesObject:(NSManagedObject *)value;
- (void)removeStoriesObject:(NSManagedObject *)value;
- (void)addStories:(NSSet *)values;
- (void)removeStories:(NSSet *)values;

@end
