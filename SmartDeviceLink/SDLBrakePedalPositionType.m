//
//  SDLBrakePedalPositionType.m


#import "SDLBrakePedalPositionType.h"
#import "SDLTimeStampType.h"
#import "SDLNames.h"

@implementation SDLBrakePedalPositionType

- (NSNumber *)value {
    return [store objectForKey:NAMES_value];
}

- (SDLTimeStampType *)timeStamp {
    NSObject *obj = [store objectForKey:NAMES_timeStamp];
    if (obj == nil || [obj isKindOfClass:SDLTimeStampType.class]) {
        return (SDLTimeStampType *)obj;
    } else {
        return [[SDLTimeStampType alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

@end
