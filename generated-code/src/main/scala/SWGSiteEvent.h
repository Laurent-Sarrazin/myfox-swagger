#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Integer.h"


@interface SWGSiteEvent : SWGObject

@property(nonatomic) NSNumber* logId;  /* The event identifier */

@property(nonatomic) NSString* label;  /* The event label */

@property(nonatomic) NSString* type;  /* The event type */

@property(nonatomic) NSString* createdAt;  /* The event date */

- (id) logId: (NSNumber*) logId
     label: (NSString*) label
     type: (NSString*) type
     createdAt: (NSString*) createdAt;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

