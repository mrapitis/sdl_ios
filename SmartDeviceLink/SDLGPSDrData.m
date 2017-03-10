//  SDLGPSDrData.m
//

#import "SDLGPSDrData.h"
#import "SDLNames.h"

@implementation SDLGPSDrData

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

- (void)setLongitudeDegrees:(NSNumber *)longitudeDegrees {
    if (longitudeDegrees != nil) {
        [store setObject:longitudeDegrees forKey:NAMES_longitudeDegrees];
    } else {
        [store removeObjectForKey:NAMES_longitudeDegrees];
    }
}

- (NSNumber *)longitudeDegrees {
    return [store objectForKey:NAMES_longitudeDegrees];
}

- (void)setLatitudeDegrees:(NSNumber *)latitudeDegrees {
    if (latitudeDegrees != nil) {
        [store setObject:latitudeDegrees forKey:NAMES_latitudeDegrees];
    } else {
        [store removeObjectForKey:NAMES_latitudeDegrees];
    }
}

- (NSNumber *)latitudeDegrees {
    return [store objectForKey:NAMES_latitudeDegrees];
}

- (void)setAltitude:(NSNumber *)altitude {
    if (altitude != nil) {
        [store setObject:altitude forKey:NAMES_altitude];
    } else {
        [store removeObjectForKey:NAMES_altitude];
    }
}

- (NSNumber *)altitude {
    return [store objectForKey:NAMES_altitude];
}

- (void)setSpeed:(NSNumber *)speed {
    if (speed != nil) {
        [store setObject:speed forKey:NAMES_speed];
    } else {
        [store removeObjectForKey:NAMES_speed];
    }
}

- (NSNumber *)speed {
    return [store objectForKey:NAMES_speed];
}

- (void)setHeading:(NSNumber *)heading {
    if (heading != nil) {
        [store setObject:heading forKey:NAMES_heading];
    } else {
        [store removeObjectForKey:NAMES_heading];
    }
}

- (NSNumber *)heading {
    return [store objectForKey:NAMES_heading];
}

@end
