#import "SWGDate.h"
#import "SWGDeviceWithState.h"

@implementation SWGDeviceWithState

-(id)deviceId: (NSNumber*) deviceId
    label: (NSString*) label
    stateLabel: (SWGString, null*) stateLabel
    modelId: (NSString*) modelId
    modelLabel: (NSString*) modelLabel
{
  _deviceId = deviceId;
  _label = label;
  _stateLabel = stateLabel;
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
        id stateLabel_dict = dict[@"stateLabel"];
        if(stateLabel_dict != nil)
            _stateLabel = [[SWGString, null alloc]initWithValues:stateLabel_dict];
        _modelId = dict[@"modelId"]; 
        _modelLabel = dict[@"modelLabel"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_deviceId != nil) dict[@"deviceId"] = _deviceId ;
        if(_label != nil) dict[@"label"] = _label ;
        if(_stateLabel != nil){
        if([_stateLabel isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGString, null *stateLabel in (NSArray*)_stateLabel) {
                [array addObject:[(SWGObject*)stateLabel asDictionary]];
            }
            dict[@"stateLabel"] = array;
        }
        else if(_stateLabel && [_stateLabel isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_stateLabel toString];
            if(dateString){
                dict[@"stateLabel"] = dateString;
            }
        }
        else {
        if(_stateLabel != nil) dict[@"stateLabel"] = [(SWGObject*)_stateLabel asDictionary];
        }
    }
    if(_modelId != nil) dict[@"modelId"] = _modelId ;
        if(_modelLabel != nil) dict[@"modelLabel"] = _modelLabel ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

