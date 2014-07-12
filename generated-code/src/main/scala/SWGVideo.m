#import "SWGDate.h"
#import "SWGVideo.h"

@implementation SWGVideo

-(id)videoId: (NSNumber*) videoId
    cameraId: (NSNumber*) cameraId
    cameraLabel: (NSString*) cameraLabel
    duration: (NSNumber*) duration
    height: (NSNumber*) height
    width: (NSNumber*) width
    isRecording: (NSNumber*) isRecording
    createdAt: (NSNumber*) createdAt
    fileURL: (NSString*) fileURL
    playURL: (NSString*) playURL
    previewURL: (NSString*) previewURL
{
  _videoId = videoId;
  _cameraId = cameraId;
  _cameraLabel = cameraLabel;
  _duration = duration;
  _height = height;
  _width = width;
  _isRecording = isRecording;
  _createdAt = createdAt;
  _fileURL = fileURL;
  _playURL = playURL;
  _previewURL = previewURL;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _videoId = dict[@"videoId"]; 
        _cameraId = dict[@"cameraId"]; 
        _cameraLabel = dict[@"cameraLabel"]; 
        _duration = dict[@"duration"]; 
        _height = dict[@"height"]; 
        _width = dict[@"width"]; 
        _isRecording = dict[@"isRecording"]; 
        _createdAt = dict[@"createdAt"]; 
        _fileURL = dict[@"fileURL"]; 
        _playURL = dict[@"playURL"]; 
        _previewURL = dict[@"previewURL"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_videoId != nil) dict[@"videoId"] = _videoId ;
        if(_cameraId != nil) dict[@"cameraId"] = _cameraId ;
        if(_cameraLabel != nil) dict[@"cameraLabel"] = _cameraLabel ;
        if(_duration != nil) dict[@"duration"] = _duration ;
        if(_height != nil) dict[@"height"] = _height ;
        if(_width != nil) dict[@"width"] = _width ;
        if(_isRecording != nil) dict[@"isRecording"] = _isRecording ;
        if(_createdAt != nil) dict[@"createdAt"] = _createdAt ;
        if(_fileURL != nil) dict[@"fileURL"] = _fileURL ;
        if(_playURL != nil) dict[@"playURL"] = _playURL ;
        if(_previewURL != nil) dict[@"previewURL"] = _previewURL ;
        NSDictionary* output = [dict copy];
    return output;
}

@end

