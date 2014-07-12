#import "SWGDate.h"
#import "SWGTemperatureRecord.h"

@implementation SWGTemperatureRecord

-(id)deviceId: (NSNumber*) deviceId
    celsius: (NSNumber*) celsius
    recordedAt: (NSNumber*) recordedAt
{
  _deviceId = deviceId;
  _celsius = celsius;
  _recordedAt = recordedAt;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _deviceId = dict[@"deviceId"]; 
        _celsius = dict[@"celsius"]; 
        _recordedAt = dict[@"recordedAt"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_deviceId != nil) dict[@"deviceId"] = _deviceId ;
        if(_celsius != nil) dict[@"celsius"] = _celsius ;
        if(_recordedAt != nil) dict[@"recordedAt"] = _recordedAt ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

