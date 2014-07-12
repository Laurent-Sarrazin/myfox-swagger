#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Integer.h"


@interface SWGVideoPlayHLS : SWGObject

@property(nonatomic) NSNumber* videoId;  /* The video identifier */

@property(nonatomic) NSString* location;  /* The stream URL */

@property(nonatomic) NSString* protocol;  /* The stream protocol */

- (id) videoId: (NSNumber*) videoId
     location: (NSString*) location
     protocol: (NSString*) protocol;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

