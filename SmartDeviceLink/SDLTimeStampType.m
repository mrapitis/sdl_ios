//  SDLTimeStampType.m
//

#import "SDLTimeStampType.h"
#import "SDLNames.h"

@implementation SDLTimeStampType

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

- (void)setSecond:(NSNumber *)second {
    if (second != nil) {
        [store setObject:second forKey:NAMES_second];
    } else {
        [store removeObjectForKey:NAMES_second];
    }
}

- (NSNumber *)second {
    return [store objectForKey:NAMES_second];

}

- (void)setMicroSecond:(NSNumber *)microSecond {
    if (microSecond != nil) {
        [store setObject:microSecond forKey:NAMES_second];
    } else {
        [store removeObjectForKey:NAMES_second];
    }
}

- (NSNumber *)microSecond {
    return [store objectForKey:NAMES_second];

}


@end
