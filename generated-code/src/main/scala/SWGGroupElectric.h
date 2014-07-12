#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "SWGDevice.h"
#import "Integer.h"


@interface SWGGroupElectric : SWGObject

@property(nonatomic) NSNumber* groupId;  /* The group identifier */

@property(nonatomic) NSString* label;  /* The group label */

@property(nonatomic) NSString* type;  /* The group type */

@property(nonatomic) NSArray* devices;  /* The group devices list */

- (id) groupId: (NSNumber*) groupId
     label: (NSString*) label
     type: (NSString*) type
     devices: (NSArray*) devices;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

