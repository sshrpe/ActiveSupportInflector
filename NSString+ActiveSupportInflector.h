//
//  NSString+ActiveSupportInflector.h
//  ActiveSupportInflector
//
//  Created by Sam Soffes on 1/25/11.
//  Copyright 2011 Scribd, Inc. All rights reserved.
//

@interface NSString (ActiveSupportInflector)

- (NSString *)pluralizeWithInteger:(NSInteger)integer;
- (NSString *)pluralizeString;
- (NSString *)singularizeString;

@end
