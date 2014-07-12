#import "SWGDate.h"
#import "SWGVideoPlayHLS.h"

@implementation SWGVideoPlayHLS

-(id)videoId: (NSNumber*) videoId
    location: (NSString*) location
    protocol: (NSString*) protocol
{
  _videoId = videoId;
  _location = location;
  _protocol = protocol;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _videoId = dict[@"videoId"]; 
        _location = dict[@"location"]; 
        _protocol = dict[@"protocol"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_videoId != nil) dict[@"videoId"] = _videoId ;
        if(_location != nil) dict[@"location"] = _location ;
        if(_protocol != nil) dict[@"protocol"] = _protocol ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

