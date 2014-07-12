#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGVideo.h"


@interface SWGVideoCollection : SWGObject

@property(nonatomic) NSArray* items;  /* List of objects */

- (id) items: (NSArray*) items;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

