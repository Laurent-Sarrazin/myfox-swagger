#import <Foundation/Foundation.h>
#import "SWGObject.h"


@interface SWGStream : SWGObject

@property(nonatomic) NSString* GUID;  /* The stream identifier */

@property(nonatomic) NSString* location;  /* The stream URL */

@property(nonatomic) NSString* protocol;  /* The stream protocol */

- (id) GUID: (NSString*) GUID
     location: (NSString*) location
     protocol: (NSString*) protocol;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

