#import "SWGDate.h"
#import "SWGRecording.h"

@implementation SWGRecording

-(id)createdAt: (NSNumber*) createdAt
    videoId: (NSNumber*) videoId
{
  _createdAt = createdAt;
  _videoId = videoId;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _createdAt = dict[@"createdAt"]; 
        _videoId = dict[@"videoId"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_createdAt != nil) dict[@"createdAt"] = _createdAt ;
        if(_videoId != nil) dict[@"videoId"] = _videoId ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

