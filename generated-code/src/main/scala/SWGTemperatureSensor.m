#import "SWGDate.h"
#import "SWGTemperatureSensor.h"

@implementation SWGTemperatureSensor

-(id)deviceId: (NSNumber*) deviceId
    label: (NSString*) label
    modelId: (NSString*) modelId
    modelLabel: (NSString*) modelLabel
{
  _deviceId = deviceId;
  _label = label;
  _modelId = modelId;
  _modelLabel = modelLabel;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _deviceId = dict[@"deviceId"]; 
        _label = dict[@"label"]; 
        _modelId = dict[@"modelId"]; 
        _modelLabel = dict[@"modelLabel"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_deviceId != nil) dict[@"deviceId"] = _deviceId ;
        if(_label != nil) dict[@"label"] = _label ;
        if(_modelId != nil) dict[@"modelId"] = _modelId ;
        if(_modelLabel != nil) dict[@"modelLabel"] = _modelLabel ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

