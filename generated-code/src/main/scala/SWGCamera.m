#import "SWGDate.h"
#import "SWGCamera.h"

@implementation SWGCamera

-(id)deviceId: (NSNumber*) deviceId
    label: (NSNumber*) label
    resolutionHeight: (NSNumber*) resolutionHeight
    resolutionWidth: (NSNumber*) resolutionWidth
    modelId: (NSNumber*) modelId
    modelLabel: (NSNumber*) modelLabel
{
  _deviceId = deviceId;
  _label = label;
  _resolutionHeight = resolutionHeight;
  _resolutionWidth = resolutionWidth;
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
        _resolutionHeight = dict[@"resolutionHeight"]; 
        _resolutionWidth = dict[@"resolutionWidth"]; 
        _modelId = dict[@"modelId"]; 
        _modelLabel = dict[@"modelLabel"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_deviceId != nil) dict[@"deviceId"] = _deviceId ;
        if(_label != nil) dict[@"label"] = _label ;
        if(_resolutionHeight != nil) dict[@"resolutionHeight"] = _resolutionHeight ;
        if(_resolutionWidth != nil) dict[@"resolutionWidth"] = _resolutionWidth ;
        if(_modelId != nil) dict[@"modelId"] = _modelId ;
        if(_modelLabel != nil) dict[@"modelLabel"] = _modelLabel ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

