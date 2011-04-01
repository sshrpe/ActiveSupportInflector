//
//  NSString+ActiveSupportInflector.m
//  ActiveSupportInflector
//
//  Created by Sam Soffes on 1/25/11.
//  Copyright 2011 Scribd, Inc. All rights reserved.
//
#import "NSString+ActiveSupportInflector.h"
#import "ActiveSupportInflector.h"

@implementation NSString (ActiveSupportInflector)

- (NSString *)pluralizeWithInteger:(NSInteger)integer;
{
    if (integer == 1) {
        return [NSString stringWithFormat:@"1 %@",self];
    }
    if (integer == 0) {
        return [NSString stringWithFormat:@"No %@",[self pluralizeString]];
    }
    return [NSString stringWithFormat:@"%d %@",integer,[self pluralizeString]];
}

- (NSString *)pluralizeString {
  static ActiveSupportInflector *inflector = nil;
  if (!inflector) {
    inflector = [[ActiveSupportInflector alloc] init];
  }
    
  return [inflector pluralize:self];
}


- (NSString *)singularizeString {
  static ActiveSupportInflector *inflector = nil;
  if (!inflector) {
    inflector = [[ActiveSupportInflector alloc] init];
  }
	
  return [inflector singularize:self];
}

@end
