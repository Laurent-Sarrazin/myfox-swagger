#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Integer.h"


@interface SWGVideo : SWGObject

@property(nonatomic) NSNumber* videoId;  /* The video identifier */

@property(nonatomic) NSNumber* cameraId;  /* The camera identifier */

@property(nonatomic) NSString* cameraLabel;  /* The camera label */

@property(nonatomic) NSNumber* duration;  /* The video duration, in seconds */

@property(nonatomic) NSNumber* height;  /* The video height, in pixels */

@property(nonatomic) NSNumber* width;  /* The video width, in pixels */

@property(nonatomic) NSNumber* isRecording;  /* Flag indicating if the video is currently recording */

@property(nonatomic) NSNumber* createdAt;  /* The video creation date */

@property(nonatomic) NSString* fileURL;  /* The video file URL */

@property(nonatomic) NSString* playURL;  /* URL to get informations for HLS playing */

@property(nonatomic) NSString* previewURL;  /* The video preview file URL */

- (id) videoId: (NSNumber*) videoId
     cameraId: (NSNumber*) cameraId
     cameraLabel: (NSString*) cameraLabel
     duration: (NSNumber*) duration
     height: (NSNumber*) height
     width: (NSNumber*) width
     isRecording: (NSNumber*) isRecording
     createdAt: (NSNumber*) createdAt
     fileURL: (NSString*) fileURL
     playURL: (NSString*) playURL
     previewURL: (NSString*) previewURL;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

