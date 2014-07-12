#import <Foundation/Foundation.h>
#import "SWGObject.h"
#import "Integer.h"


@interface SWGImage : SWGObject

@property(nonatomic) NSNumber* imageId;  /* The image identifier */

@property(nonatomic) NSNumber* cameraId;  /* This value can be null if the camera has been uninstalled. */

@property(nonatomic) NSNumber* cameraLabel;  /* The label of the camera that has captured the image */

@property(nonatomic) NSNumber* height;  /* The image height in pixels */

@property(nonatomic) NSNumber* width;  /* The image width in pixels */

@property(nonatomic) NSNumber* createdAt;  /* The image creation date */

@property(nonatomic) NSString* fileURL;  /* The download URL */

- (id) imageId: (NSNumber*) imageId
     cameraId: (NSNumber*) cameraId
     cameraLabel: (NSNumber*) cameraLabel
     height: (NSNumber*) height
     width: (NSNumber*) width
     createdAt: (NSNumber*) createdAt
     fileURL: (NSString*) fileURL;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

