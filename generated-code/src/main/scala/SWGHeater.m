#import "SWGDate.h"
#import "SWGHeater.h"

@implementation SWGHeater

-(id)modeLabel: (NSString*) modeLabel
    stateLabel: (NSString*) stateLabel
    deviceId: (NSNumber*) deviceId
    label: (NSString*) label
    modelId: (NSString*) modelId
    modelLabel: (NSString*) modelLabel
{
  _modeLabel = modeLabel;
  _stateLabel = stateLabel;
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
        _modeLabel = dict[@"modeLabel"]; 
        _stateLabel = dict[@"stateLabel"]; 
        _deviceId = dict[@"deviceId"]; 
        _label = dict[@"label"]; 
        _modelId = dict[@"modelId"]; 
        _modelLabel = dict[@"modelLabel"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_modeLabel != nil) dict[@"modeLabel"] = _modeLabel ;
        if(_stateLabel != nil) dict[@"stateLabel"] = _stateLabel ;
        if(_deviceId != nil) dict[@"deviceId"] = _deviceId ;
        if(_label != nil) dict[@"label"] = _label ;
        if(_modelId != nil) dict[@"modelId"] = _modelId ;
        if(_modelLabel != nil) dict[@"modelLabel"] = _modelLabel ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

