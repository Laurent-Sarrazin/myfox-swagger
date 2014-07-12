#import "SWGDate.h"
#import "SWGGateCollection.h"

@implementation SWGGateCollection

-(id)items: (NSArray*) items
{
  _items = items;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        id items_dict = dict[@"items"];
        if([items_dict isKindOfClass:[NSArray class]]) {

            NSMutableArray * objs = [[NSMutableArray alloc] initWithCapacity:[(NSArray*)items_dict count]];

            if([(NSArray*)items_dict count] > 0) {
                for (NSDictionary* dict in (NSArray*)items_dict) {
                    SWGGate* d = [[SWGGate alloc] initWithValues:dict];
                    [objs addObject:d];
                }
                
                _items = [[NSArray alloc] initWithArray:objs];
            }
            else {
                _items = [[NSArray alloc] init];
            }
        }
        else {
            _items = [[NSArray alloc] init];
        }
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_items != nil){
        if([_items isKindOfClass:[NSArray class]]){
            NSMutableArray * array = [[NSMutableArray alloc] init];
            for( SWGGate *items in (NSArray*)_items) {
                [array addObject:[(SWGObject*)items asDictionary]];
            }
            dict[@"items"] = array;
        }
        else if(_items && [_items isKindOfClass:[SWGDate class]]) {
            NSString * dateString = [(SWGDate*)_items toString];
            if(dateString){
                dict[@"items"] = dateString;
            }
        }
        else {
        if(_items != nil) dict[@"items"] = [(SWGObject*)_items asDictionary];
        }
    }
    NSDictionary* output = [dict copy];
    return output;
}

@end

