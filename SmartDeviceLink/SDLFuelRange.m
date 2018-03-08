//  SDLFuelRange.m
//


#import "SDLFuelRange.h"
#import "NSMutableDictionary+Store.h"
#import "SDLNames.h"


NS_ASSUME_NONNULL_BEGIN

@implementation SDLFuelRange

- (instancetype)init {
    if (self = [super init]) {
    }
    return self;
}

- (void)setType:(nullable SDLFuelType)type {
    [store sdl_setObject:type forName:SDLNameType];
}

- (nullable SDLFuelType)type {
    return [store sdl_objectForName:SDLNameType];
}

- (void)setRange:(nullable NSNumber *)range {
    [store sdl_setObject:range forName:SDLNameRange];
}

- (nullable NSNumber *)range {
    return [store sdl_objectForName:SDLNameRange];
}


@end
NS_ASSUME_NONNULL_END
