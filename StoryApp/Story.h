//
//  Story.h
//  StoryApp
//
//  Created by Vincent Lee on 1/21/15.
//  Copyright (c) 2015 VincentLee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class User;

@interface Story : NSManagedObject

@property (nonatomic, retain) NSNumber * published;
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSSet *sections;
@property (nonatomic, retain) NSSet *authors;
@end

@interface Story (CoreDataGeneratedAccessors)

- (void)addSectionsObject:(NSManagedObject *)value;
- (void)removeSectionsObject:(NSManagedObject *)value;
- (void)addSections:(NSSet *)values;
- (void)removeSections:(NSSet *)values;

- (void)addAuthorsObject:(User *)value;
- (void)removeAuthorsObject:(User *)value;
- (void)addAuthors:(NSSet *)values;
- (void)removeAuthors:(NSSet *)values;

@end
