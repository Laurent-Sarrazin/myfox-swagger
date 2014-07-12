#import "SWGDate.h"
#import "SWGScenario.h"

@implementation SWGScenario

-(id)scenarioId: (NSNumber*) scenarioId
    label: (NSString*) label
    typeLabel: (NSString*) typeLabel
    enabled: (NSNumber*) enabled
{
  _scenarioId = scenarioId;
  _label = label;
  _typeLabel = typeLabel;
  _enabled = enabled;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _scenarioId = dict[@"scenarioId"]; 
        _label = dict[@"label"]; 
        _typeLabel = dict[@"typeLabel"]; 
        _enabled = dict[@"enabled"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_scenarioId != nil) dict[@"scenarioId"] = _scenarioId ;
        if(_label != nil) dict[@"label"] = _label ;
        if(_typeLabel != nil) dict[@"typeLabel"] = _typeLabel ;
        if(_enabled != nil) dict[@"enabled"] = _enabled ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

