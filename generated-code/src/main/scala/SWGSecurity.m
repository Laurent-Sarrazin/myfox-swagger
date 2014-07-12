#import "SWGDate.h"
#import "SWGSecurity.h"

@implementation SWGSecurity

-(id)status: (NSNumber*) status
    statusLabel: (NSString*) statusLabel
{
  _status = status;
  _statusLabel = statusLabel;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _status = dict[@"status"]; 
        _statusLabel = dict[@"statusLabel"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_status != nil) dict[@"status"] = _status ;
        if(_statusLabel != nil) dict[@"statusLabel"] = _statusLabel ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

