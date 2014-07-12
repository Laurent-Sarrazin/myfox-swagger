#import "SWGDate.h"
#import "SWGDeviceWithStateState.h"

@implementation SWGDeviceWithStateState

-(id)deviceId: (NSNumber*) deviceId
    stateLabel: (SWGString, null*) stateLabel
{
  _deviceId = deviceId;
  _stateLabel = stateLabel;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _deviceId = dict[@"deviceId"]; 
        id stateLabel_dict = dict[@"stateLabel"];
        if(stateLabel_dict != nil)
            _stateLabel = [[SWGString, null alloc]initWithValues:stateLabel_dict];
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_deviceId != nil) dict[@"deviceId"] = _deviceId ;
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
    NSDictionary* output = [dict copy];
    return output;
}

@end

