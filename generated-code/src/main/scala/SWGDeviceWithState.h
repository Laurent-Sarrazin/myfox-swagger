#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGString, null.h"
#import "Integer.h"


@interface SWGDeviceWithState : SWGObject

@property(nonatomic) NSNumber* deviceId;  /* The  device identifier */

@property(nonatomic) NSString* label;  /* The device label */

@property(nonatomic) SWGString, null* stateLabel;  /* Current state */

@property(nonatomic) NSString* modelId;  /* The device model identifier */

@property(nonatomic) NSString* modelLabel;  /* The device model label */

- (id) deviceId: (NSNumber*) deviceId
     label: (NSString*) label
     stateLabel: (SWGString, null*) stateLabel
     modelId: (NSString*) modelId
     modelLabel: (NSString*) modelLabel;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

