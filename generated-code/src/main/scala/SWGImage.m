#import "SWGDate.h"
#import "SWGImage.h"

@implementation SWGImage

-(id)imageId: (NSNumber*) imageId
    cameraId: (NSNumber*) cameraId
    cameraLabel: (NSNumber*) cameraLabel
    height: (NSNumber*) height
    width: (NSNumber*) width
    createdAt: (NSNumber*) createdAt
    fileURL: (NSString*) fileURL
{
  _imageId = imageId;
  _cameraId = cameraId;
  _cameraLabel = cameraLabel;
  _height = height;
  _width = width;
  _createdAt = createdAt;
  _fileURL = fileURL;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _imageId = dict[@"imageId"]; 
        _cameraId = dict[@"cameraId"]; 
        _cameraLabel = dict[@"cameraLabel"]; 
        _height = dict[@"height"]; 
        _width = dict[@"width"]; 
        _createdAt = dict[@"createdAt"]; 
        _fileURL = dict[@"fileURL"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_imageId != nil) dict[@"imageId"] = _imageId ;
        if(_cameraId != nil) dict[@"cameraId"] = _cameraId ;
        if(_cameraLabel != nil) dict[@"cameraLabel"] = _cameraLabel ;
        if(_height != nil) dict[@"height"] = _height ;
        if(_width != nil) dict[@"width"] = _width ;
        if(_createdAt != nil) dict[@"createdAt"] = _createdAt ;
        if(_fileURL != nil) dict[@"fileURL"] = _fileURL ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

