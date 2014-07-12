#import <Foundation/Foundation.h>
#import "SWGSiteCollection.h"
#import "SWGSite.h"



@interface SWGClientApi: NSObject

-(void) addHeader:(NSString*)value forKey:(NSString*)key;
-(unsigned long) requestQueueSize;
+(SWGClientApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key;
+(void) setBasePath:(NSString*)basePath;
+(NSString*) getBasePath;
/**

 List available sites for the current user
 Retrieves the site list attached to the current user account.
 */
-(NSNumber*) clientSiteItemsWithCompletionBlock :(void (^)(SWGSiteCollection* output, NSError* error))completionBlock;

/**

 Deprecated
 This endpoint is now deprecated and will not be supported after June 30th. Please use <code>client/site/items</code> instead.
 */
-(NSNumber*) clientSiteListWithCompletionBlock :(void (^)(NSArray* output, NSError* error))completionBlock;

@end
