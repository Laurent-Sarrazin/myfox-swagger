#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Integer.h"


@interface SWGSecurity : SWGObject

@property(nonatomic) NSNumber* status;  /* We recommend to use 'statusLabel' instead */

@property(nonatomic) NSString* statusLabel;  /* The security level label */

- (id) status: (NSNumber*) status
     statusLabel: (NSString*) statusLabel;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

