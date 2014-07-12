#import "SWGDate.h"
#import "SWGSiteEvent.h"

@implementation SWGSiteEvent

-(id)logId: (NSNumber*) logId
    label: (NSString*) label
    type: (NSString*) type
    createdAt: (NSString*) createdAt
{
  _logId = logId;
  _label = label;
  _type = type;
  _createdAt = createdAt;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _logId = dict[@"logId"]; 
        _label = dict[@"label"]; 
        _type = dict[@"type"]; 
        _createdAt = dict[@"createdAt"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_logId != nil) dict[@"logId"] = _logId ;
        if(_label != nil) dict[@"label"] = _label ;
        if(_type != nil) dict[@"type"] = _type ;
        if(_createdAt != nil) dict[@"createdAt"] = _createdAt ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

