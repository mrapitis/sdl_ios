//  SDLGPSDataType.m
//

#import "SDLGPSDataType.h"
#import "SDLNames.h"

@implementation SDLGPSDataType

- (instancetype)init {
    if (self = [super init]) {
    }
    return self;
}

- (instancetype)initWithDictionary:(NSMutableDictionary *)dict {
    if (self = [super initWithDictionary:dict]) {
    }
    return self;
}

- (void)setValue:(SDLGPSData *)value {
    if (value != nil) {
        [store setObject:value forKey:NAMES_value];
    } else {
        [store removeObjectForKey:NAMES_value];
    }
}

- (SDLGPSData *)value {
    return [store objectForKey:NAMES_value];
}

- (void)setTimeStamp:(NSNumber *)timeStamp {
    if (timeStamp != nil) {
        [store setObject:timeStamp forKey:NAMES_timeStamp];
    } else {
        [store removeObjectForKey:NAMES_timeStamp];
    }
}

- (NSNumber *)timeStamp {
    return [store objectForKey:NAMES_timeStamp];
}


@end
