#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Integer.h"


@interface SWGScenario : SWGObject

@property(nonatomic) NSNumber* scenarioId;  /* The scenario identifier */

@property(nonatomic) NSString* label;  /* The scenario label */

@property(nonatomic) NSString* typeLabel;  /* The scenario type label */

@property(nonatomic) NSNumber* enabled;  /* The enable state of the scenario */

- (id) scenarioId: (NSNumber*) scenarioId
     label: (NSString*) label
     typeLabel: (NSString*) typeLabel
     enabled: (NSNumber*) enabled;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

