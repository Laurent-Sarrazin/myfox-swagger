#import <Foundation/Foundation.h>
#import "SWGSecurity.h"
#import "SWGGroupShutter.h"
#import "SWGBinary.h"
#import "SWGTemperatureRecordCollection.h"
#import "SWGStream.h"
#import "SWGGateCollection.h"
#import "SWGImageCollection.h"
#import "SWGDeviceWithStateCollection.h"
#import "SWGTemperatureRecord.h"
#import "SWGVideo.h"
#import "SWGGroupShutterCollection.h"
#import "SWGGroupElectricCollection.h"
#import "SWGGate.h"
#import "SWGDeviceWithStateState.h"
#import "SWGGroupElectric.h"
#import "SWGSnapshot.h"
#import "SWGShutterCollection.h"
#import "SWGVideoCollection.h"
#import "SWGRecording.h"
#import "SWGCamera.h"
#import "SWGSocket.h"
#import "SWGSiteEventCollection.h"
#import "SWGSiteEvent.h"
#import "SWGScenario.h"
#import "SWGHeater.h"
#import "SWGCameraCollection.h"
#import "SWGTemperatureSensor.h"
#import "SWGImage.h"
#import "SWGSocketCollection.h"
#import "SWGVideoPlayHLS.h"
#import "SWGShutter.h"
#import "SWGTemperatureSensorCollection.h"
#import "SWGHeaterCollection.h"
#import "SWGScenarioCollection.h"



@interface SWGSiteApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGSiteApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 List camera devices
 Retrieves the camera list for a site.
 @param siteId ID of user's site
 */
-(NSNumber*) deviceCameraItemsWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(SWGCameraCollection* output, NSError* error))completionBlock;

/**

 Deprecated
 This endpoint is now deprecated and will not be supported after June 30th. Please use <code>/site/{siteId}/device/camera/items</code> instead.
 @param siteId ID of user's site
 */
-(NSNumber*) deviceCameraListWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Add 30 seconds to live streaming
 
 @param siteId ID of user's site
 @param cameraId ID of site's camera
 */
-(NSNumber*) cameraLiveExtendWithCompletionBlock :(NSNumber*) siteId 
        cameraId:(NSNumber*) cameraId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Start live streaming from a camera
 The 'location' attribute of the response corresponds to the url to retrieve the live stream. Depending on the camera model, some streaming protocol may not be available
 @param siteId ID of user's site
 @param cameraId ID of site's camera
 @param protocol Protocol to use for live (hls or rtmp)
 */
-(NSNumber*) cameraLiveStartWithCompletionBlock :(NSNumber*) siteId 
        cameraId:(NSNumber*) cameraId 
        protocol:(NSString*) protocol 
        completionHandler: (void (^)(SWGStream* output, NSError* error))completionBlock;

/**

 Stop live streaming from a camera
 
 @param siteId ID of user's site
 @param cameraId ID of site's camera
 */
-(NSNumber*) cameraLiveStopWithCompletionBlock :(NSNumber*) siteId 
        cameraId:(NSNumber*) cameraId 
        completionHandler: (void (^)(NSNumber* output, NSError* error))completionBlock;

/**

 Get a volatile preview from a camera
 This resource returns the binary stream for the preview
 @param siteId ID of user's site
 @param cameraId ID of site's camera
 */
-(NSNumber*) cameraPreviewTakeWithCompletionBlock :(NSNumber*) siteId 
        cameraId:(NSNumber*) cameraId 
        completionHandler: (void (^)(SWGBinary* output, NSError* error))completionBlock;

/**

 Start recording from a camera
 The recording will start immediately and will last for 2 minutes before being automatically stopped
 @param siteId ID of user's site
 @param cameraId ID of site's camera
 */
-(NSNumber*) cameraRecordingStartWithCompletionBlock :(NSNumber*) siteId 
        cameraId:(NSNumber*) cameraId 
        completionHandler: (void (^)(SWGRecording* output, NSError* error))completionBlock;

/**

 Stop recording from a camera
 
 @param siteId ID of user's site
 @param cameraId ID of site's camera
 */
-(NSNumber*) cameraRecordingStopWithCompletionBlock :(NSNumber*) siteId 
        cameraId:(NSNumber*) cameraId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Take a snapshot from a camera and save it in the library
 
 @param siteId ID of user's site
 @param cameraId ID of site's camera
 */
-(NSNumber*) cameraSnapshotTakeWithCompletionBlock :(NSNumber*) siteId 
        cameraId:(NSNumber*) cameraId 
        completionHandler: (void (^)(SWGSnapshot* output, NSError* error))completionBlock;

/**

 List devices with state data
 
 @param siteId ID of user's site
 */
-(NSNumber*) deviceDataStateItemsWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(SWGDeviceWithStateCollection* output, NSError* error))completionBlock;

/**

 Get device state
 
 @param siteId ID of user's site
 @param deviceId ID of site's slave device
 */
-(NSNumber*) deviceDataStateWithCompletionBlock :(NSNumber*) siteId 
        deviceId:(NSNumber*) deviceId 
        completionHandler: (void (^)(SWGDeviceWithStateState* output, NSError* error))completionBlock;

/**

 List all temperature sensor featured devices
 
 @param siteId ID of user's site
 */
-(NSNumber*) deviceDataTemperatureItemsWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(SWGTemperatureSensorCollection* output, NSError* error))completionBlock;

/**

 Deprecated
 This endpoint is now deprecated and will not be supported after June 30th. Please use <code>/site/{siteId}/device/data/temperature/items</code> instead.
 @param siteId ID of user's site
 */
-(NSNumber*) deviceDataTemperatureListWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Get temperature measures
 Retrieves the history of temperature values. A maximum of 100 records are retrieved. If dateFrom is not specified, records from last week will be retrieved.
 @param siteId ID of user's site
 @param deviceId ID of site's slave device
 @param dateFrom Interval start of temperature measure date. Format: YYYY-MM-DDThh:mm:ssZ
 @param dateTo Interval end of temperature measure date. Format: YYYY-MM-DDThh:mm:ssZ
 */
-(NSNumber*) deviceDataTemperatureGetWithCompletionBlock :(NSNumber*) siteId 
        deviceId:(NSNumber*) deviceId 
        dateFrom:(NSString*) dateFrom 
        dateTo:(NSString*) dateTo 
        completionHandler: (void (^)(SWGTemperatureRecordCollection* output, NSError* error))completionBlock;

/**

 Deprecated
 This endpoint is now deprecated and will not be supported after June 30th. Please use <code>/site/{siteId}/device/data/temperature</code> instead.
 @param siteId ID of user's site
 @param deviceId ID of site's slave device
 */
-(NSNumber*) deviceDataTemperatureGet_deprecatedWithCompletionBlock :(NSNumber*) siteId 
        deviceId:(NSNumber*) deviceId 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 List gate devices
 
 @param siteId ID of user's site
 */
-(NSNumber*) deviceGateItemsWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(SWGGateCollection* output, NSError* error))completionBlock;

/**

 Deprecated
 This endpoint is now deprecated and will not be supported after June 30th. Please use <code>/site/{siteId}/device/gate/items</code> instead.
 @param siteId ID of user's site
 */
-(NSNumber*) deviceGateListWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Perform action #1
 
 @param siteId ID of user's site
 @param deviceId ID of site's device
 */
-(NSNumber*) deviceGatePerformOneWithCompletionBlock :(NSNumber*) siteId 
        deviceId:(NSNumber*) deviceId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Perform action #2
 
 @param siteId ID of user's site
 @param deviceId ID of site's slave device
 */
-(NSNumber*) deviceGatePerformTwoWithCompletionBlock :(NSNumber*) siteId 
        deviceId:(NSNumber*) deviceId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 List heater devices
 
 @param siteId ID of user's site
 */
-(NSNumber*) deviceHeaterItemsWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(SWGHeaterCollection* output, NSError* error))completionBlock;

/**

 Deprecated
 This endpoint is now deprecated and will not be supported after June 30th. Please use <code>/site/{siteId}/device/heater/items</code> instead.
 @param siteId ID of user's site
 */
-(NSNumber*) deviceHeaterListWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Set a heater to 'eco' mode
 
 @param siteId ID of user's site
 @param deviceId ID of site's device
 */
-(NSNumber*) deviceHeaterOnWithCompletionBlock :(NSNumber*) siteId 
        deviceId:(NSNumber*) deviceId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Set a heater to 'frost' mode
 
 @param siteId ID of user's site
 @param deviceId ID of site's device
 */
-(NSNumber*) deviceHeaterOn_SWGSiteApi_0WithCompletionBlock :(NSNumber*) siteId 
        deviceId:(NSNumber*) deviceId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Set a heater to 'off' mode
 
 @param siteId ID of user's site
 @param deviceId ID of site's device
 */
-(NSNumber*) deviceHeaterOffWithCompletionBlock :(NSNumber*) siteId 
        deviceId:(NSNumber*) deviceId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Set a heater to 'on' mode
 
 @param siteId ID of user's site
 @param deviceId ID of site's device
 */
-(NSNumber*) deviceHeaterOn_SWGSiteApi_1WithCompletionBlock :(NSNumber*) siteId 
        deviceId:(NSNumber*) deviceId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 List shutter devices
 
 @param siteId ID of user's site
 */
-(NSNumber*) deviceShutterItemsWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(SWGShutterCollection* output, NSError* error))completionBlock;

/**

 Deprecated
 This endpoint is now deprecated and will not be supported after June 30th. Please use <code>/site/{siteId}/device/shutter/items</code> instead.
 @param siteId ID of user's site
 */
-(NSNumber*) deviceShutterListWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Close shutter
 
 @param siteId ID of user's site
 @param deviceId ID of site's device
 */
-(NSNumber*) deviceShutterCloseWithCompletionBlock :(NSNumber*) siteId 
        deviceId:(NSNumber*) deviceId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Open shutter
 
 @param siteId ID of user's site
 @param deviceId ID of site's device
 */
-(NSNumber*) deviceShutterOpenWithCompletionBlock :(NSNumber*) siteId 
        deviceId:(NSNumber*) deviceId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 List socket devices
 
 @param siteId ID of user's site
 */
-(NSNumber*) deviceSocketItemsWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(SWGSocketCollection* output, NSError* error))completionBlock;

/**

 Deprecated
 This endpoint is now deprecated and will not be supported after June 30th. Please use <code>/site/{siteId}/device/socket/items</code> instead.
 @param siteId ID of user's site
 */
-(NSNumber*) deviceSocketListWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Turn off a device
 
 @param siteId ID of user's site
 @param deviceId ID of site's device
 */
-(NSNumber*) deviceSocketOffWithCompletionBlock :(NSNumber*) siteId 
        deviceId:(NSNumber*) deviceId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Turn on a device
 
 @param siteId ID of user's site
 @param deviceId ID of site's device
 */
-(NSNumber*) deviceSocketOnWithCompletionBlock :(NSNumber*) siteId 
        deviceId:(NSNumber*) deviceId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 List groups of type electric
 Retrieves the electric type group list for a specific site
 @param siteId ID of user's site
 */
-(NSNumber*) groupElectricItemsWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(SWGGroupElectricCollection* output, NSError* error))completionBlock;

/**

 Deprecated
 This endpoint is now deprecated and will not be supported after June 30th. Please use <code>/site/{siteId}/group/electric/items</code> instead.
 @param siteId ID of user's site
 */
-(NSNumber*) groupElectricListWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Turn off all electric devices from a group
 If an error occurs on the group, id of the device as well as error description will be returned in the response body.
 @param siteId ID of user's site
 @param groupId ID of site's group
 */
-(NSNumber*) groupElectricOffWithCompletionBlock :(NSNumber*) siteId 
        groupId:(NSNumber*) groupId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Turn on all electric devices from a group
 If an error occurs on the group, id of the device as well as error description will be returned in the response body.
 @param siteId ID of user's site
 @param groupId ID of site's group
 */
-(NSNumber*) groupElectricOnWithCompletionBlock :(NSNumber*) siteId 
        groupId:(NSNumber*) groupId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 List groups of type shutter
 Retrieves the shutter type group list for a specific site
 @param siteId ID of user's site
 */
-(NSNumber*) groupShutterItemsWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(SWGGroupShutterCollection* output, NSError* error))completionBlock;

/**

 Deprecated
 This endpoint is now deprecated and will not be supported after June 30th. Please use <code>/site/{siteId}/group/shutter/items</code> instead.
 @param siteId ID of user's site
 */
-(NSNumber*) groupShutterListWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Close all shutters from a group
 If an error occurs on the group, id of the device as well as error description will be returned in the response body.
 @param siteId ID of user's site
 @param groupId ID of site's group
 */
-(NSNumber*) groupShutterCloseWithCompletionBlock :(NSNumber*) siteId 
        groupId:(NSNumber*) groupId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Open all shutters from a group
 If an error occurs on the group, id of the device as well as error description will be returned in the response body.
 @param siteId ID of user's site
 @param groupId ID of site's group
 */
-(NSNumber*) groupShutterOpenWithCompletionBlock :(NSNumber*) siteId 
        groupId:(NSNumber*) groupId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Get site history
 Retrieves the site events. If a date if specified, all events of the specified day are retrieved. Otherwise, all events from current day are retrieved. Results are limited to 300 records.
 @param siteId ID of user's site
 @param dateFrom Interval start of event date. Format: YYYY-MM-DDThh:mm:ssZ
 @param dateTo Interval end of event date. Format: YYYY-MM-DDThh:mm:ssZ
 @param dateOrder Sort results. 1 for ascending, -1 for descending.
 @param type Comma separated type of events to retrieve (alarm, access, account, config, diagnosis, homeAuto, security, scenario)
 */
-(NSNumber*) siteHistoryWithCompletionBlock :(NSNumber*) siteId 
        dateFrom:(SWGDate*) dateFrom 
        dateTo:(SWGDate*) dateTo 
        dateOrder:(NSNumber*) dateOrder 
        type:(NSString*) type 
        completionHandler: (void (^)(SWGSiteEventCollection* output, NSError* error))completionBlock;

/**

 Deprecated
 This endpoint is now deprecated and will not be supported after June 30th. Please use <code>/site/{siteId}/history</code> instead.
 @param siteId ID of user's site
 */
-(NSNumber*) siteHistoryGetWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Get all images taken from a site's cameras
 
 @param siteId ID of user's site
 @param cameraId ID of user's camera
 @param dateFrom Interval start of image's creation date. Format: YYYY-MM-DDThh:mm:ssZ
 @param dateTo Interval end of image's creation date. Format: YYYY-MM-DDThh:mm:ssZ
 @param dateOrder Sort results. 1 for ascending, -1 for descending.
 */
-(NSNumber*) libraryImageItemsWithCompletionBlock :(NSNumber*) siteId 
        cameraId:(NSNumber*) cameraId 
        dateFrom:(NSString*) dateFrom 
        dateTo:(NSString*) dateTo 
        dateOrder:(NSNumber*) dateOrder 
        completionHandler: (void (^)(SWGImageCollection* output, NSError* error))completionBlock;

/**

 Deprecated
 This endpoint is now deprecated and will not be supported after June 30th. Please use <code>/site/{siteId}/library/image/items</code> instead.
 @param siteId ID of user's site
 */
-(NSNumber*) libraryImageGetWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Get all videos taken from a site's cameras
 
 @param siteId ID of user's site
 @param cameraId ID of user's camera
 @param dateFrom Interval start of video's creation date. Format: YYYY-MM-DDThh:mm:ssZ
 @param dateTo Interval end of video's creation date. Format: YYYY-MM-DDThh:mm:ssZ
 @param dateOrder Sort results. 1 for ascending, -1 for descending.
 @param isRecording Is the video currently recording ?
 */
-(NSNumber*) libraryVideoItemsWithCompletionBlock :(NSNumber*) siteId 
        cameraId:(NSNumber*) cameraId 
        dateFrom:(NSString*) dateFrom 
        dateTo:(NSString*) dateTo 
        dateOrder:(NSNumber*) dateOrder 
        isRecording:(NSNumber*) isRecording 
        completionHandler: (void (^)(SWGVideoCollection* output, NSError* error))completionBlock;

/**

 Deprecated
 This endpoint is now deprecated and will not be supported after June 30th. Please use <code>/site/{siteId}/library/video/items</code> instead.
 @param siteId ID of user's site
 */
-(NSNumber*) libraryVideoGetWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Get video informations for HLS playing
 
 @param siteId ID of user's site
 @param videoId ID of video
 */
-(NSNumber*) libraryVideoPlayWithCompletionBlock :(NSNumber*) siteId 
        videoId:(NSNumber*) videoId 
        completionHandler: (void (^)(SWGVideoPlayHLS* output, NSError* error))completionBlock;

/**

 List available scenarios
 
 @param siteId ID of user's site
 */
-(NSNumber*) scenarioListWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(SWGScenarioCollection* output, NSError* error))completionBlock;

/**

 Deprecated
 This endpoint is now deprecated and will not be supported after June 30th. Please use <code>/site/{siteId}/scenario/items</code> instead.
 @param siteId ID of user's site
 */
-(NSNumber*) deviceDataTemperatureGet_deprecated_SWGSiteApi_0WithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Disable a scenario
 
 @param siteId ID of user's site
 @param scenarioId ID of site's scenario
 */
-(NSNumber*) scenarioDisableWithCompletionBlock :(NSNumber*) siteId 
        scenarioId:(NSNumber*) scenarioId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Enable a scenario
 
 @param siteId ID of user's site
 @param scenarioId ID of site's scenario
 */
-(NSNumber*) scenarioEnableWithCompletionBlock :(NSNumber*) siteId 
        scenarioId:(NSNumber*) scenarioId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Play a scenario
 
 @param siteId ID of user's site
 @param scenarioId ID of site's scenario
 */
-(NSNumber*) scenarioPlayWithCompletionBlock :(NSNumber*) siteId 
        scenarioId:(NSNumber*) scenarioId 
        completionHandler: (void (^)(NSError* error))completionBlock;

/**

 Get site security level
 
 @param siteId ID of user's site
 */
-(NSNumber*) siteSeclevGetWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Deprecated
 This endpoint is now deprecated and will not be supported after June 30th. Please use <code>/site/{siteId}/security</code> instead.
 @param siteId ID of user's site
 */
-(NSNumber*) deprecated_siteSeclevGetWithCompletionBlock :(NSNumber*) siteId 
        completionHandler: (void (^)(SWGSecurity* output, NSError* error))completionBlock;

/**

 Set site security level
 
 @param siteId ID of user's site
 @param securityLevel Security level to apply (armed, partial, disarmed)
 */
-(NSNumber*) siteSeclevSetWithCompletionBlock :(NSNumber*) siteId 
        securityLevel:(NSString*) securityLevel 
        completionHandler: (void (^)(NSError* error))completionBlock;

@end
