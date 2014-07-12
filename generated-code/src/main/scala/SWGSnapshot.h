#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Integer.h"


@interface SWGSnapshot : SWGObject

@property(nonatomic) NSNumber* imageId;  /* The image identifier */

@property(nonatomic) NSNumber* createdAt;  /* The image file creation date */

@property(nonatomic) NSString* fileURL;  /* The image file URL on the library */

- (id) imageId: (NSNumber*) imageId
     createdAt: (NSNumber*) createdAt
     fileURL: (NSString*) fileURL;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

