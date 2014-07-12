#import "SWGClientApi.h"
#import "SWGFile.h"
#import "SWGApiClient.h"
#import "SWGSiteCollection.h"
#import "SWGSite.h"




@implementation SWGClientApi
static NSString * basePath = @"https://api.myfox.me/v2";

+(SWGClientApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {
    static SWGClientApi* singletonAPI = nil;

    if (singletonAPI == nil) {
        singletonAPI = [[SWGClientApi alloc] init];
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


-(NSNumber*) clientSiteItemsWithCompletionBlock: (void (^)(SWGSiteCollection* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/client/site/items", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
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
                        SWGSiteCollection *result = nil;
                        if (data) {
                            result = [[SWGSiteCollection alloc]initWithValues: data];
                        }
                        completionBlock(result , nil);}];
    

}

-(NSNumber*) clientSiteListWithCompletionBlock: (void (^)(NSArray* output, NSError* error))completionBlock{

    NSMutableString* requestUrl = [NSMutableString stringWithFormat:@"%@/client/site/list", basePath];

    // remove format in URL if needed
    if ([requestUrl rangeOfString:@".{format}"].location != NSNotFound)
        [requestUrl replaceCharactersInRange: [requestUrl rangeOfString:@".{format}"] withString:@".json"];

    NSString* requestContentType = @"application/json";
    NSString* responseContentType = @"application/json";

        NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [[NSMutableDictionary alloc] init];
    id bodyDictionary = nil;
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
                                SWGSite* d = [[SWGSite alloc]initWithValues: dict];
                                [objs addObject:d];
                             }
                             completionBlock(objs, nil);
                         }
                        }];
    

}



@end
