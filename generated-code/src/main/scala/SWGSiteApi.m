#import "SWGSiteApi.h"
#import "SWGFile.h"
#import "SWGApiClient.h"
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




@implementation SWGSiteApi
static NSString * basePath = @"https://api.myfox.me/v2";

+(SWGSiteApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGSiteApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGSiteApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(void) setBasePath:(NSString*)path {
    basePath = path;
}

+(NSString*) getBasePath {
    return basePath;
}

-(SWGApiClient*) apiClient {
    return [SWGApiClient sharedClientFromPool:basePath];
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [[self apiClient] setHeaderValue:value forKey:key];
}

-(id) init {
    self = [super init];
    [self apiClient];
    return self;
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [[self apiClient] setHeaderValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [SWGApiClient requestQueueSize];
}


-(NSNumber*) deviceCameraItemsWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(SWGCameraCollection* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/camera/items", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGCameraCollection *result = nil;
                        if (data) {
                            result = [[SWGCameraCollection alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) deviceCameraListWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/camera/list", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary: requestUrl 
                               method: @"GET" 
                          queryParams: queryParams 
                                 body: bodyDictionary 
                         headerParams: headerParams
                   requestContentType: requestContentType
                  responseContentType: responseContentType
                      completionBlock: ^(NSDictionary *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);return;
                         }
                         
                         if([data isKindOfClass:[NSArray class]]){
                             NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                             for (NSDictionary* dict in (NSArray*)data) {
                                SWGCamera* d = [[SWGCamera alloc]initWithValues: dict];
                                [objs addObject:d];
                             }
                             completionBlock(objs, nil);
                         }
                        }];
    

}

-(NSNumber*) cameraLiveExtendWithCompletionBlock:(NSNumber*) siteId
        cameraId:(NSNumber*) cameraId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{cameraId}/camera/live/extend", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"cameraId", @"}"]] withString: [SWGApiClient escape:cameraId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(cameraId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) cameraLiveStartWithCompletionBlock:(NSNumber*) siteId
        cameraId:(NSNumber*) cameraId
        protocol:(NSString*) protocol
        completionHandler: (void (^)(SWGStream* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{cameraId}/camera/live/start/{protocol}", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"cameraId", @"}"]] withString: [SWGApiClient escape:cameraId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"protocol", @"}"]] withString: [SWGApiClient escape:protocol]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(cameraId == nil) {
        // error
    }
    if(protocol == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"POST" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGStream *result = nil;
                        if (data) {
                            result = [[SWGStream alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) cameraLiveStopWithCompletionBlock:(NSNumber*) siteId
        cameraId:(NSNumber*) cameraId
        completionHandler: (void (^)(NSNumber* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{cameraId}/camera/live/stop", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"cameraId", @"}"]] withString: [SWGApiClient escape:cameraId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(cameraId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                              method:@"POST" 
                                         queryParams:queryParams 
                                                body:bodyDictionary 
                                        headerParams:headerParams
                                  requestContentType: requestContentType
                                 responseContentType: responseContentType
                                     completionBlock:^(NSString *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);
                             return;
                         }
                        NSNumber *result = data ? [[NSNumber alloc]initWithString: data] : nil;
                        completionBlock(result, nil);
                     }];
    

}

-(NSNumber*) cameraPreviewTakeWithCompletionBlock:(NSNumber*) siteId
        cameraId:(NSNumber*) cameraId
        completionHandler: (void (^)(SWGBinary* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{cameraId}/camera/preview/take", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"cameraId", @"}"]] withString: [SWGApiClient escape:cameraId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(cameraId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"POST" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGBinary *result = nil;
                        if (data) {
                            result = [[SWGBinary alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) cameraRecordingStartWithCompletionBlock:(NSNumber*) siteId
        cameraId:(NSNumber*) cameraId
        completionHandler: (void (^)(SWGRecording* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{cameraId}/camera/recording/start", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"cameraId", @"}"]] withString: [SWGApiClient escape:cameraId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(cameraId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"POST" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGRecording *result = nil;
                        if (data) {
                            result = [[SWGRecording alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) cameraRecordingStopWithCompletionBlock:(NSNumber*) siteId
        cameraId:(NSNumber*) cameraId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{cameraId}/camera/recording/stop", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"cameraId", @"}"]] withString: [SWGApiClient escape:cameraId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(cameraId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) cameraSnapshotTakeWithCompletionBlock:(NSNumber*) siteId
        cameraId:(NSNumber*) cameraId
        completionHandler: (void (^)(SWGSnapshot* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{cameraId}/camera/snapshot/take", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"cameraId", @"}"]] withString: [SWGApiClient escape:cameraId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(cameraId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"POST" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGSnapshot *result = nil;
                        if (data) {
                            result = [[SWGSnapshot alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) deviceDataStateItemsWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(SWGDeviceWithStateCollection* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/data/state/items", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGDeviceWithStateCollection *result = nil;
                        if (data) {
                            result = [[SWGDeviceWithStateCollection alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) deviceDataStateWithCompletionBlock:(NSNumber*) siteId
        deviceId:(NSNumber*) deviceId
        completionHandler: (void (^)(SWGDeviceWithStateState* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{deviceId}/data/state", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceId", @"}"]] withString: [SWGApiClient escape:deviceId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(deviceId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGDeviceWithStateState *result = nil;
                        if (data) {
                            result = [[SWGDeviceWithStateState alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) deviceDataTemperatureItemsWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(SWGTemperatureSensorCollection* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/data/temperature/items", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGTemperatureSensorCollection *result = nil;
                        if (data) {
                            result = [[SWGTemperatureSensorCollection alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) deviceDataTemperatureListWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/data/temperature/list", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary: requestUrl 
                               method: @"GET" 
                          queryParams: queryParams 
                                 body: bodyDictionary 
                         headerParams: headerParams
                   requestContentType: requestContentType
                  responseContentType: responseContentType
                      completionBlock: ^(NSDictionary *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);return;
                         }
                         
                         if([data isKindOfClass:[NSArray class]]){
                             NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                             for (NSDictionary* dict in (NSArray*)data) {
                                SWGTemperatureSensor* d = [[SWGTemperatureSensor alloc]initWithValues: dict];
                                [objs addObject:d];
                             }
                             completionBlock(objs, nil);
                         }
                        }];
    

}

-(NSNumber*) deviceDataTemperatureGetWithCompletionBlock:(NSNumber*) siteId
        deviceId:(NSNumber*) deviceId
        dateFrom:(NSString*) dateFrom
        dateTo:(NSString*) dateTo
        completionHandler: (void (^)(SWGTemperatureRecordCollection* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{deviceId}/data/temperature", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceId", @"}"]] withString: [SWGApiClient escape:deviceId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(dateFrom != nil)
        queryParams[@"dateFrom"] = dateFrom;
    if(dateTo != nil)
        queryParams[@"dateTo"] = dateTo;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(deviceId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGTemperatureRecordCollection *result = nil;
                        if (data) {
                            result = [[SWGTemperatureRecordCollection alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) deviceDataTemperatureGet_deprecatedWithCompletionBlock:(NSNumber*) siteId
        deviceId:(NSNumber*) deviceId
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{deviceId}/data/temperature/get", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceId", @"}"]] withString: [SWGApiClient escape:deviceId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(deviceId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary: requestUrl 
                               method: @"GET" 
                          queryParams: queryParams 
                                 body: bodyDictionary 
                         headerParams: headerParams
                   requestContentType: requestContentType
                  responseContentType: responseContentType
                      completionBlock: ^(NSDictionary *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);return;
                         }
                         
                         if([data isKindOfClass:[NSArray class]]){
                             NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                             for (NSDictionary* dict in (NSArray*)data) {
                                SWGTemperatureRecord* d = [[SWGTemperatureRecord alloc]initWithValues: dict];
                                [objs addObject:d];
                             }
                             completionBlock(objs, nil);
                         }
                        }];
    

}

-(NSNumber*) deviceGateItemsWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(SWGGateCollection* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/gate/items", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGGateCollection *result = nil;
                        if (data) {
                            result = [[SWGGateCollection alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) deviceGateListWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/gate/list", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary: requestUrl 
                               method: @"GET" 
                          queryParams: queryParams 
                                 body: bodyDictionary 
                         headerParams: headerParams
                   requestContentType: requestContentType
                  responseContentType: responseContentType
                      completionBlock: ^(NSDictionary *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);return;
                         }
                         
                         if([data isKindOfClass:[NSArray class]]){
                             NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                             for (NSDictionary* dict in (NSArray*)data) {
                                SWGGate* d = [[SWGGate alloc]initWithValues: dict];
                                [objs addObject:d];
                             }
                             completionBlock(objs, nil);
                         }
                        }];
    

}

-(NSNumber*) deviceGatePerformOneWithCompletionBlock:(NSNumber*) siteId
        deviceId:(NSNumber*) deviceId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{deviceId}/gate/perform/one", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceId", @"}"]] withString: [SWGApiClient escape:deviceId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(deviceId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) deviceGatePerformTwoWithCompletionBlock:(NSNumber*) siteId
        deviceId:(NSNumber*) deviceId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{deviceId}/gate/perform/two", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceId", @"}"]] withString: [SWGApiClient escape:deviceId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(deviceId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) deviceHeaterItemsWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(SWGHeaterCollection* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/heater/items", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGHeaterCollection *result = nil;
                        if (data) {
                            result = [[SWGHeaterCollection alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) deviceHeaterListWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/heater/list", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary: requestUrl 
                               method: @"GET" 
                          queryParams: queryParams 
                                 body: bodyDictionary 
                         headerParams: headerParams
                   requestContentType: requestContentType
                  responseContentType: responseContentType
                      completionBlock: ^(NSDictionary *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);return;
                         }
                         
                         if([data isKindOfClass:[NSArray class]]){
                             NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                             for (NSDictionary* dict in (NSArray*)data) {
                                SWGHeater* d = [[SWGHeater alloc]initWithValues: dict];
                                [objs addObject:d];
                             }
                             completionBlock(objs, nil);
                         }
                        }];
    

}

-(NSNumber*) deviceHeaterOnWithCompletionBlock:(NSNumber*) siteId
        deviceId:(NSNumber*) deviceId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{deviceId}/heater/eco", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceId", @"}"]] withString: [SWGApiClient escape:deviceId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(deviceId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) deviceHeaterOn_SWGSiteApi_0WithCompletionBlock:(NSNumber*) siteId
        deviceId:(NSNumber*) deviceId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{deviceId}/heater/frost", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceId", @"}"]] withString: [SWGApiClient escape:deviceId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(deviceId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) deviceHeaterOffWithCompletionBlock:(NSNumber*) siteId
        deviceId:(NSNumber*) deviceId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{deviceId}/heater/off", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceId", @"}"]] withString: [SWGApiClient escape:deviceId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(deviceId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) deviceHeaterOn_SWGSiteApi_1WithCompletionBlock:(NSNumber*) siteId
        deviceId:(NSNumber*) deviceId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{deviceId}/heater/on", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceId", @"}"]] withString: [SWGApiClient escape:deviceId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(deviceId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) deviceShutterItemsWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(SWGShutterCollection* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/shutter/items", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGShutterCollection *result = nil;
                        if (data) {
                            result = [[SWGShutterCollection alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) deviceShutterListWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/shutter/list", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary: requestUrl 
                               method: @"GET" 
                          queryParams: queryParams 
                                 body: bodyDictionary 
                         headerParams: headerParams
                   requestContentType: requestContentType
                  responseContentType: responseContentType
                      completionBlock: ^(NSDictionary *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);return;
                         }
                         
                         if([data isKindOfClass:[NSArray class]]){
                             NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                             for (NSDictionary* dict in (NSArray*)data) {
                                SWGShutter* d = [[SWGShutter alloc]initWithValues: dict];
                                [objs addObject:d];
                             }
                             completionBlock(objs, nil);
                         }
                        }];
    

}

-(NSNumber*) deviceShutterCloseWithCompletionBlock:(NSNumber*) siteId
        deviceId:(NSNumber*) deviceId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{deviceId}/shutter/close", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceId", @"}"]] withString: [SWGApiClient escape:deviceId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(deviceId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) deviceShutterOpenWithCompletionBlock:(NSNumber*) siteId
        deviceId:(NSNumber*) deviceId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{deviceId}/shutter/open", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceId", @"}"]] withString: [SWGApiClient escape:deviceId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(deviceId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) deviceSocketItemsWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(SWGSocketCollection* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/socket/items", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGSocketCollection *result = nil;
                        if (data) {
                            result = [[SWGSocketCollection alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) deviceSocketListWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/socket/list", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary: requestUrl 
                               method: @"GET" 
                          queryParams: queryParams 
                                 body: bodyDictionary 
                         headerParams: headerParams
                   requestContentType: requestContentType
                  responseContentType: responseContentType
                      completionBlock: ^(NSDictionary *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);return;
                         }
                         
                         if([data isKindOfClass:[NSArray class]]){
                             NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                             for (NSDictionary* dict in (NSArray*)data) {
                                SWGSocket* d = [[SWGSocket alloc]initWithValues: dict];
                                [objs addObject:d];
                             }
                             completionBlock(objs, nil);
                         }
                        }];
    

}

-(NSNumber*) deviceSocketOffWithCompletionBlock:(NSNumber*) siteId
        deviceId:(NSNumber*) deviceId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{deviceId}/socket/off", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceId", @"}"]] withString: [SWGApiClient escape:deviceId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(deviceId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) deviceSocketOnWithCompletionBlock:(NSNumber*) siteId
        deviceId:(NSNumber*) deviceId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/device/{deviceId}/socket/on", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"deviceId", @"}"]] withString: [SWGApiClient escape:deviceId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(deviceId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) groupElectricItemsWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(SWGGroupElectricCollection* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/group/electric/items", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGGroupElectricCollection *result = nil;
                        if (data) {
                            result = [[SWGGroupElectricCollection alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) groupElectricListWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/group/electric/list", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary: requestUrl 
                               method: @"GET" 
                          queryParams: queryParams 
                                 body: bodyDictionary 
                         headerParams: headerParams
                   requestContentType: requestContentType
                  responseContentType: responseContentType
                      completionBlock: ^(NSDictionary *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);return;
                         }
                         
                         if([data isKindOfClass:[NSArray class]]){
                             NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                             for (NSDictionary* dict in (NSArray*)data) {
                                SWGGroupElectric* d = [[SWGGroupElectric alloc]initWithValues: dict];
                                [objs addObject:d];
                             }
                             completionBlock(objs, nil);
                         }
                        }];
    

}

-(NSNumber*) groupElectricOffWithCompletionBlock:(NSNumber*) siteId
        groupId:(NSNumber*) groupId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/group/{groupId}/electric/off", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"groupId", @"}"]] withString: [SWGApiClient escape:groupId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(groupId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) groupElectricOnWithCompletionBlock:(NSNumber*) siteId
        groupId:(NSNumber*) groupId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/group/{groupId}/electric/on", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"groupId", @"}"]] withString: [SWGApiClient escape:groupId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(groupId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) groupShutterItemsWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(SWGGroupShutterCollection* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/group/shutter/items", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGGroupShutterCollection *result = nil;
                        if (data) {
                            result = [[SWGGroupShutterCollection alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) groupShutterListWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/group/shutter/list", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary: requestUrl 
                               method: @"GET" 
                          queryParams: queryParams 
                                 body: bodyDictionary 
                         headerParams: headerParams
                   requestContentType: requestContentType
                  responseContentType: responseContentType
                      completionBlock: ^(NSDictionary *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);return;
                         }
                         
                         if([data isKindOfClass:[NSArray class]]){
                             NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                             for (NSDictionary* dict in (NSArray*)data) {
                                SWGGroupShutter* d = [[SWGGroupShutter alloc]initWithValues: dict];
                                [objs addObject:d];
                             }
                             completionBlock(objs, nil);
                         }
                        }];
    

}

-(NSNumber*) groupShutterCloseWithCompletionBlock:(NSNumber*) siteId
        groupId:(NSNumber*) groupId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/group/{groupId}/shutter/close", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"groupId", @"}"]] withString: [SWGApiClient escape:groupId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(groupId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) groupShutterOpenWithCompletionBlock:(NSNumber*) siteId
        groupId:(NSNumber*) groupId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/group/{groupId}/shutter/open", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"groupId", @"}"]] withString: [SWGApiClient escape:groupId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(groupId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) siteHistoryWithCompletionBlock:(NSNumber*) siteId
        dateFrom:(SWGDate*) dateFrom
        dateTo:(SWGDate*) dateTo
        dateOrder:(NSNumber*) dateOrder
        type:(NSString*) type
        completionHandler: (void (^)(SWGSiteEventCollection* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/history", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(dateFrom != nil)
        queryParams[@"dateFrom"] = dateFrom;
    if(dateTo != nil)
        queryParams[@"dateTo"] = dateTo;
    if(dateOrder != nil)
        queryParams[@"dateOrder"] = dateOrder;
    if(type != nil)
        queryParams[@"type"] = type;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGSiteEventCollection *result = nil;
                        if (data) {
                            result = [[SWGSiteEventCollection alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) siteHistoryGetWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/history/get", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary: requestUrl 
                               method: @"GET" 
                          queryParams: queryParams 
                                 body: bodyDictionary 
                         headerParams: headerParams
                   requestContentType: requestContentType
                  responseContentType: responseContentType
                      completionBlock: ^(NSDictionary *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);return;
                         }
                         
                         if([data isKindOfClass:[NSArray class]]){
                             NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                             for (NSDictionary* dict in (NSArray*)data) {
                                SWGSiteEvent* d = [[SWGSiteEvent alloc]initWithValues: dict];
                                [objs addObject:d];
                             }
                             completionBlock(objs, nil);
                         }
                        }];
    

}

-(NSNumber*) libraryImageItemsWithCompletionBlock:(NSNumber*) siteId
        cameraId:(NSNumber*) cameraId
        dateFrom:(NSString*) dateFrom
        dateTo:(NSString*) dateTo
        dateOrder:(NSNumber*) dateOrder
        completionHandler: (void (^)(SWGImageCollection* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/library/image/items", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(cameraId != nil)
        queryParams[@"cameraId"] = cameraId;
    if(dateFrom != nil)
        queryParams[@"dateFrom"] = dateFrom;
    if(dateTo != nil)
        queryParams[@"dateTo"] = dateTo;
    if(dateOrder != nil)
        queryParams[@"dateOrder"] = dateOrder;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGImageCollection *result = nil;
                        if (data) {
                            result = [[SWGImageCollection alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) libraryImageGetWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/library/image/list", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary: requestUrl 
                               method: @"GET" 
                          queryParams: queryParams 
                                 body: bodyDictionary 
                         headerParams: headerParams
                   requestContentType: requestContentType
                  responseContentType: responseContentType
                      completionBlock: ^(NSDictionary *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);return;
                         }
                         
                         if([data isKindOfClass:[NSArray class]]){
                             NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                             for (NSDictionary* dict in (NSArray*)data) {
                                SWGImage* d = [[SWGImage alloc]initWithValues: dict];
                                [objs addObject:d];
                             }
                             completionBlock(objs, nil);
                         }
                        }];
    

}

-(NSNumber*) libraryVideoItemsWithCompletionBlock:(NSNumber*) siteId
        cameraId:(NSNumber*) cameraId
        dateFrom:(NSString*) dateFrom
        dateTo:(NSString*) dateTo
        dateOrder:(NSNumber*) dateOrder
        isRecording:(NSNumber*) isRecording
        completionHandler: (void (^)(SWGVideoCollection* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/library/video/items", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if(cameraId != nil)
        queryParams[@"cameraId"] = cameraId;
    if(dateFrom != nil)
        queryParams[@"dateFrom"] = dateFrom;
    if(dateTo != nil)
        queryParams[@"dateTo"] = dateTo;
    if(dateOrder != nil)
        queryParams[@"dateOrder"] = dateOrder;
    if(isRecording != nil)
        queryParams[@"isRecording"] = isRecording;
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGVideoCollection *result = nil;
                        if (data) {
                            result = [[SWGVideoCollection alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) libraryVideoGetWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/library/video/list", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary: requestUrl 
                               method: @"GET" 
                          queryParams: queryParams 
                                 body: bodyDictionary 
                         headerParams: headerParams
                   requestContentType: requestContentType
                  responseContentType: responseContentType
                      completionBlock: ^(NSDictionary *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);return;
                         }
                         
                         if([data isKindOfClass:[NSArray class]]){
                             NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                             for (NSDictionary* dict in (NSArray*)data) {
                                SWGVideo* d = [[SWGVideo alloc]initWithValues: dict];
                                [objs addObject:d];
                             }
                             completionBlock(objs, nil);
                         }
                        }];
    

}

-(NSNumber*) libraryVideoPlayWithCompletionBlock:(NSNumber*) siteId
        videoId:(NSNumber*) videoId
        completionHandler: (void (^)(SWGVideoPlayHLS* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/library/video/{videoId}/play", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"videoId", @"}"]] withString: [SWGApiClient escape:videoId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(videoId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGVideoPlayHLS *result = nil;
                        if (data) {
                            result = [[SWGVideoPlayHLS alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) scenarioListWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(SWGScenarioCollection* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/scenario/items", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGScenarioCollection *result = nil;
                        if (data) {
                            result = [[SWGScenarioCollection alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) deviceDataTemperatureGet_deprecated_SWGSiteApi_0WithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/scenario/list", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary: requestUrl 
                               method: @"GET" 
                          queryParams: queryParams 
                                 body: bodyDictionary 
                         headerParams: headerParams
                   requestContentType: requestContentType
                  responseContentType: responseContentType
                      completionBlock: ^(NSDictionary *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);return;
                         }
                         
                         if([data isKindOfClass:[NSArray class]]){
                             NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                             for (NSDictionary* dict in (NSArray*)data) {
                                SWGScenario* d = [[SWGScenario alloc]initWithValues: dict];
                                [objs addObject:d];
                             }
                             completionBlock(objs, nil);
                         }
                        }];
    

}

-(NSNumber*) scenarioDisableWithCompletionBlock:(NSNumber*) siteId
        scenarioId:(NSNumber*) scenarioId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/scenario/{scenarioId}/disable", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"scenarioId", @"}"]] withString: [SWGApiClient escape:scenarioId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(scenarioId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) scenarioEnableWithCompletionBlock:(NSNumber*) siteId
        scenarioId:(NSNumber*) scenarioId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/scenario/{scenarioId}/enable", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"scenarioId", @"}"]] withString: [SWGApiClient escape:scenarioId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(scenarioId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) scenarioPlayWithCompletionBlock:(NSNumber*) siteId
        scenarioId:(NSNumber*) scenarioId
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/scenario/{scenarioId}/play", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"scenarioId", @"}"]] withString: [SWGApiClient escape:scenarioId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(scenarioId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}

-(NSNumber*) siteSeclevGetWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/security", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary: requestUrl 
                               method: @"GET" 
                          queryParams: queryParams 
                                 body: bodyDictionary 
                         headerParams: headerParams
                   requestContentType: requestContentType
                  responseContentType: responseContentType
                      completionBlock: ^(NSDictionary *data, NSError *error) {
                         if (error) {
                             completionBlock(nil, error);return;
                         }
                         
                         if([data isKindOfClass:[NSArray class]]){
                             NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[data count]];
                             for (NSDictionary* dict in (NSArray*)data) {
                                SWGSecurity* d = [[SWGSecurity alloc]initWithValues: dict];
                                [objs addObject:d];
                             }
                             completionBlock(objs, nil);
                         }
                        }];
    

}

-(NSNumber*) deprecated_siteSeclevGetWithCompletionBlock:(NSNumber*) siteId
        completionHandler: (void (^)(SWGSecurity* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/security/get", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client dictionary:requestUrl 
                              method:@"GET" 
                         queryParams:queryParams 
                                body:bodyDictionary 
                        headerParams:headerParams
                  requestContentType:requestContentType
                 responseContentType:responseContentType
                     completionBlock:^(NSDictionary *data, NSError *error) {
                        if (error) {
                            completionBlock(nil, error);return;
                        }
                        SWGSecurity *result = nil;
                        if (data) {
                            result = [[SWGSecurity alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) siteSeclevSetWithCompletionBlock:(NSNumber*) siteId
        securityLevel:(NSString*) securityLevel
        completionHandler: (void (^)(NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/site/{siteId}/security/set/{securityLevel}", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"siteId", @"}"]] withString: [SWGApiClient escape:siteId]];
    [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:[NSString stringWithFormat:@"%@%@%@", @"{", @"securityLevel", @"}"]] withString: [SWGApiClient escape:securityLevel]];
    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
        if(siteId == nil) {
        // error
    }
    if(securityLevel == nil) {
        // error
    }
    SWGApiClient* client = [SWGApiClient sharedClientFromPool:basePath];

    return [client stringWithCompletionBlock:requestUrl 
                                             method:@"POST" 
                                        queryParams:queryParams 
                                               body:bodyDictionary 
                                       headerParams:headerParams
                                 requestContentType: requestContentType
                                responseContentType: responseContentType
                                    completionBlock:^(NSString *data, NSError *error) {
                        if (error) {
                            completionBlock(error);
                            return;
                        }
                        completionBlock(nil);
                    }];
    

}



@end
