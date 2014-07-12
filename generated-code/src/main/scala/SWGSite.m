#import "SWGDate.h"
#import "SWGSite.h"

@implementation SWGSite

-(id)siteId: (NSNumber*) siteId
    label: (NSString*) label
    brand: (NSString*) brand
    timezone: (NSString*) timezone
    AXA: (NSString*) AXA
{
  _siteId = siteId;
  _label = label;
  _brand = brand;
  _timezone = timezone;
  _AXA = AXA;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _siteId = dict[@"siteId"]; 
        _label = dict[@"label"]; 
        _brand = dict[@"brand"]; 
        _timezone = dict[@"timezone"]; 
        _AXA = dict[@"AXA"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_siteId != nil) dict[@"siteId"] = _siteId ;
        if(_label != nil) dict[@"label"] = _label ;
        if(_brand != nil) dict[@"brand"] = _brand ;
        if(_timezone != nil) dict[@"timezone"] = _timezone ;
        if(_AXA != nil) dict[@"AXA"] = _AXA ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

