#import "SWGDate.h"
#import "SWGStream.h"

@implementation SWGStream

-(id)GUID: (NSString*) GUID
    location: (NSString*) location
    protocol: (NSString*) protocol
{
  _GUID = GUID;
  _location = location;
  _protocol = protocol;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _GUID = dict[@"GUID"]; 
        _location = dict[@"location"]; 
        _protocol = dict[@"protocol"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_GUID != nil) dict[@"GUID"] = _GUID ;
        if(_location != nil) dict[@"location"] = _location ;
        if(_protocol != nil) dict[@"protocol"] = _protocol ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

