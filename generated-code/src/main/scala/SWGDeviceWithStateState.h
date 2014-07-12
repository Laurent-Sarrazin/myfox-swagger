#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGString, null.h"
#import "Integer.h"


@interface SWGDeviceWithStateState : SWGObject

@property(nonatomic) NSNumber* deviceId;  /* The device identifier */

@property(nonatomic) SWGString, null* stateLabel;  /* Current state */

- (id) deviceId: (NSNumber*) deviceId
     stateLabel: (SWGString, null*) stateLabel;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

