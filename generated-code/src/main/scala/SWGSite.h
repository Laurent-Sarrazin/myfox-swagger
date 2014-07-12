#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Integer.h"


@interface SWGSite : SWGObject

@property(nonatomic) NSNumber* siteId;  /* The site unique identifier */

@property(nonatomic) NSString* label;  /* The site label */

@property(nonatomic) NSString* brand;  /* The brand of the site */

@property(nonatomic) NSString* timezone;  /* The timezone of the site location */

@property(nonatomic) NSString* AXA;  /* AXA Assistance identifier */

- (id) siteId: (NSNumber*) siteId
     label: (NSString*) label
     brand: (NSString*) brand
     timezone: (NSString*) timezone
     AXA: (NSString*) AXA;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

