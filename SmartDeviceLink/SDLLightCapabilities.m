//  SDLLightCapabilities.m
//

#import "SDLLightCapabilities.h"
#import "SDLNames.h"
#import "NSMutableDictionary+Store.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLLightCapabilities

- (instancetype)initWithName:(SDLLightName)name {
    self = [self init];
    if(!self) {
        return nil;
    }
    self.name = name;

    return self;
}

- (instancetype)initWithName:(SDLLightName)name densityAvailable:(BOOL)densityAvailable RGBColorSpaceAvailable:(BOOL)RGBColorSpaceAvailable statusAvailable:(BOOL)statusAvailable {
    self = [self init];
    if(!self) {
        return nil;
    }
    self.name = name;
    self.densityAvailable = @(densityAvailable);
    self.RGBColorSpaceAvailable = @(RGBColorSpaceAvailable);
    self.statusAvailable = @(statusAvailable);

    return self;
}

- (void)setName:(SDLLightName)name {
    [store sdl_setObject:name forName:SDLNameName];
}

- (SDLLightName)name {
    return [store sdl_objectForName:SDLNameName];
}

- (void)setDensityAvailable:(nullable NSNumber<SDLBool> *)densityAvailable {
    [store sdl_setObject:densityAvailable forName:SDLNameDensityAvailable];
}

- (nullable NSNumber<SDLBool> *)densityAvailable {
    return [store sdl_objectForName:SDLNameDensityAvailable];
}

- (void)setRGBColorSpaceAvailable:(nullable NSNumber<SDLBool> *)RGBColorSpaceAvailable {
    [store sdl_setObject:RGBColorSpaceAvailable forName:SDLNameRGBColorSpaceAvailable];
}

- (nullable NSNumber<SDLBool> *)RGBColorSpaceAvailable {
    return [store sdl_objectForName:SDLNameRGBColorSpaceAvailable];
}

- (void)setStatusAvailable:(nullable NSNumber<SDLBool> *)statusAvailable {
    [store sdl_setObject:statusAvailable forName:SDLNameStatusAvailable];
}

- (nullable NSNumber<SDLBool> *)statusAvailable {
    return [store sdl_objectForName:SDLNameStatusAvailable];
}

@end

NS_ASSUME_NONNULL_END
