#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Integer.h"


@interface SWGRecording : SWGObject

@property(nonatomic) NSNumber* createdAt;  /* The video file creation date */

@property(nonatomic) NSNumber* videoId;  /* The video identifier */

- (id) createdAt: (NSNumber*) createdAt
     videoId: (NSNumber*) videoId;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

