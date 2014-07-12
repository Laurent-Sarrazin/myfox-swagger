#import "SWGDate.h"
#import "SWGGroupShutter.h"

@implementation SWGGroupShutter

-(id)groupId: (NSNumber*) groupId
    label: (NSString*) label
    type: (NSString*) type
    devices: (NSArray*) devices
{
  _groupId = groupId;
  _label = label;
  _type = type;
  _devices = devices;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _groupId = dict[@"groupId"]; 
        _label = dict[@"label"]; 
        _type = dict[@"type"]; 
        id devices_dict = dict[@"devices"];
        if([devices_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)devices_dict count]];

            if([(NSArray*)devices_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)devices_dict) {
                    SWGDevice* d = [[SWGDevice alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _devices = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _devices = [[NSArray alloc] init];
            }
        }
        else {
            _devices = [[NSArray alloc] init];
        }
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_groupId != nil) dict[@"groupId"] = _groupId ;
        if(_label != nil) dict[@"label"] = _label ;
        if(_type != nil) dict[@"type"] = _type ;
        if(_devices != nil){
        if([_devices isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGDevice *devices in (NSArray*)_devices) {
                [array addObject:[(SWGObject*)devices asDictionary]];
            }
            dict[@"devices"] = array;
        }
        else if(_devices && [_devices isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_devices toString];
            if(dateString){
                dict[@"devices"] = dateString;
            }
        }
        else {
        if(_devices != nil) dict[@"devices"] = [(SWGObject*)_devices asDictionary];
        }
    }
    NSDictionary* output = [dict copy];
    return output;
}

@end

