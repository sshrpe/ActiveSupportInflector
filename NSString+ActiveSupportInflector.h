//
//  NSString+ActiveSupportInflector.h
//  ActiveSupportInflector
//

@interface NSString (ActiveSupportInflector)

- (NSString *)pluralizeWithInteger:(NSInteger)integer;
- (NSString *)pluralizeString;
- (NSString *)singularizeString;

@end
