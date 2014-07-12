#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Integer.h"


@interface SWGCamera : SWGObject

@property(nonatomic) NSNumber* deviceId;  /* The camera identifier */

@property(nonatomic) NSNumber* label;  /* The camera label */

@property(nonatomic) NSNumber* resolutionHeight;  /* The produced image height in pixels */

@property(nonatomic) NSNumber* resolutionWidth;  /* The produced image width in pixels */

@property(nonatomic) NSNumber* modelId;  /* The camera model identifier */

@property(nonatomic) NSNumber* modelLabel;  /* The camera model name */

- (id) deviceId: (NSNumber*) deviceId
     label: (NSNumber*) label
     resolutionHeight: (NSNumber*) resolutionHeight
     resolutionWidth: (NSNumber*) resolutionWidth
     modelId: (NSNumber*) modelId
     modelLabel: (NSNumber*) modelLabel;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

