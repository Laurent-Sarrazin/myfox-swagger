#import "SWGDate.h"
#import "SWGSnapshot.h"

@implementation SWGSnapshot

-(id)imageId: (NSNumber*) imageId
    createdAt: (NSNumber*) createdAt
    fileURL: (NSString*) fileURL
{
  _imageId = imageId;
  _createdAt = createdAt;
  _fileURL = fileURL;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _imageId = dict[@"imageId"]; 
        _createdAt = dict[@"createdAt"]; 
        _fileURL = dict[@"fileURL"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_imageId != nil) dict[@"imageId"] = _imageId ;
        if(_createdAt != nil) dict[@"createdAt"] = _createdAt ;
        if(_fileURL != nil) dict[@"fileURL"] = _fileURL ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

