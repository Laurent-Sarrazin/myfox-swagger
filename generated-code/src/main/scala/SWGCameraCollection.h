#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGCamera.h"


@interface SWGCameraCollection : SWGObject

@property(nonatomic) NSArray* items;  /* List of objects */

- (id) items: (NSArray*) items;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

