//  SDLAxisSensorData.m
//

#import "SDLAxisSensorData.h"
#import "SDLNames.h"

@implementation SDLAxisSensorData

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


- (void)setCumulativeValue0:(NSNumber *)cumulativeValue0 {
    if (cumulativeValue0 != nil) {
        [store setObject:cumulativeValue0 forKey:NAMES_cumulativeValue0];
    } else {
        [store removeObjectForKey:NAMES_cumulativeValue0];
    }
}

- (NSNumber *)cumulativeValue0 {
    return [store objectForKey:NAMES_cumulativeValue0];

}

- (void)setCumulativeValue1:(NSNumber *)cumulativeValue1 {
    if (cumulativeValue1 != nil) {
        [store setObject:cumulativeValue1 forKey:NAMES_cumulativeValue1];
    } else {
        [store removeObjectForKey:NAMES_cumulativeValue1];
    }
}

- (NSNumber *)cumulativeValue1 {
    return [store objectForKey:NAMES_cumulativeValue1];
    
}

- (void)setCumulativeValue2:(NSNumber *)cumulativeValue2 {
    if (cumulativeValue2 != nil) {
        [store setObject:cumulativeValue2 forKey:NAMES_cumulativeValue2];
    } else {
        [store removeObjectForKey:NAMES_cumulativeValue2];
    }
}

- (NSNumber *)cumulativeValue2 {
    return [store objectForKey:NAMES_cumulativeValue2];
}

@end
