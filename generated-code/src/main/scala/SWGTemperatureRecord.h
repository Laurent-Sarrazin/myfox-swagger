#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Integer.h"


@interface SWGTemperatureRecord : SWGObject

@property(nonatomic) NSNumber* deviceId;  /* The temperature sensor device identifier */

@property(nonatomic) NSNumber* celsius;  /* The temperature value is celsius degrees */

@property(nonatomic) NSNumber* recordedAt;  /* The temperature value creation date */

- (id) deviceId: (NSNumber*) deviceId
     celsius: (NSNumber*) celsius
     recordedAt: (NSNumber*) recordedAt;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

