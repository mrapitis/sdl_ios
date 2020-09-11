//
//  SDLVideoStreamingCapability.m
//  SmartDeviceLink-iOS
//
//  Created by Brett McIsaac on 7/31/17.
//  Copyright © 2017 smartdevicelink. All rights reserved.
//

#import "SDLImageResolution.h"
#import "SDLVideoStreamingCapability.h"
#import "SDLVideoStreamingFormat.h"

#import "NSMutableDictionary+Store.h"
#import "SDLRPCParameterNames.h"
#import "SDLStreamingVideoScaleManager.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLVideoStreamingCapability

- (instancetype)initWithPreferredResolution:(nullable SDLImageResolution *)preferredResolution maxBitrate:(int32_t)maxBitrate supportedFormats:(nullable NSArray<SDLVideoStreamingFormat *> *)supportedFormats hapticDataSupported:(BOOL)hapticDataSupported {
    return [self initWithPreferredResolution:preferredResolution maxBitrate:@(maxBitrate) supportedFormats:supportedFormats hapticDataSupported:@(hapticDataSupported) diagonalScreenSize:nil ppi:nil scale:nil];
}

- (instancetype)initWithPreferredResolution:(nullable SDLImageResolution *)preferredResolution maxBitrate:(int32_t)maxBitrate supportedFormats:(nullable NSArray<SDLVideoStreamingFormat *> *)supportedFormats hapticDataSupported:(BOOL)hapticDataSupported diagonalScreenSize:(float)diagonalScreenSize pixelPerInch:(float)pixelPerInch scale:(float)scale {
    return [self initWithPreferredResolution:preferredResolution maxBitrate:@(maxBitrate) supportedFormats:supportedFormats hapticDataSupported:@(hapticDataSupported) diagonalScreenSize:@(diagonalScreenSize) ppi:@(pixelPerInch) scale:@(scale)];
}

- (instancetype)initWithPreferredResolution:(nullable SDLImageResolution *)preferredResolution maxBitrate:(nullable NSNumber *)maxBitrate supportedFormats:(nullable NSArray<SDLVideoStreamingFormat *> *)supportedFormats hapticDataSupported:(nullable NSNumber *)hapticDataSupported diagonalScreenSize:(nullable NSNumber *)diagonalScreenSize ppi:(nullable NSNumber *)pixelPerInch scale:(nullable NSNumber *)scale {
    self = [self init];
    if (!self) {
        return self;
    }

    self.maxBitrate = maxBitrate;
    self.preferredResolution = preferredResolution;
    self.supportedFormats = supportedFormats;
    self.hapticSpatialDataSupported = hapticDataSupported;
    self.diagonalScreenSize = diagonalScreenSize;
    self.pixelPerInch = pixelPerInch;
    self.scale = scale;

    return self;
}

- (void)setPreferredResolution:(nullable SDLImageResolution *)preferredResolution {
    [self.store sdl_setObject:preferredResolution forName:SDLRPCParameterNamePreferredResolution];
}

- (nullable SDLImageResolution *)preferredResolution {
    return [self.store sdl_objectForName:SDLRPCParameterNamePreferredResolution ofClass:SDLImageResolution.class error:nil];
}

- (void)setMaxBitrate:(nullable NSNumber<SDLInt> *)maxBitrate {
    [self.store sdl_setObject:maxBitrate forName:SDLRPCParameterNameMaxBitrate];
}

- (nullable NSNumber<SDLInt> *)maxBitrate {
    return [self.store sdl_objectForName:SDLRPCParameterNameMaxBitrate ofClass:NSNumber.class error:nil];
}

- (void)setSupportedFormats:(nullable NSArray<SDLVideoStreamingFormat *> *)supportedFormats {
    [self.store sdl_setObject:supportedFormats forName:SDLRPCParameterNameSupportedFormats];
}

- (nullable NSArray<SDLVideoStreamingFormat *> *)supportedFormats {
    return [self.store sdl_objectsForName:SDLRPCParameterNameSupportedFormats ofClass:SDLVideoStreamingFormat.class error:nil];
}

- (void)setHapticSpatialDataSupported:(nullable NSNumber<SDLBool> *)hapticSpatialDataSupported {
    [self.store sdl_setObject:hapticSpatialDataSupported forName:SDLRPCParameterNameHapticSpatialDataSupported];
}

- (nullable NSNumber<SDLBool> *)hapticSpatialDataSupported {
    return [self.store sdl_objectForName:SDLRPCParameterNameHapticSpatialDataSupported ofClass:NSNumber.class error:nil];
}

- (void)setDiagonalScreenSize:(nullable NSNumber<SDLFloat> *)diagonalScreenSize {
    [self.store sdl_setObject:diagonalScreenSize forName:SDLRPCParameterNameDiagonalScreenSize];
}

- (nullable NSNumber<SDLFloat> *)diagonalScreenSize {
    return [self.store sdl_objectForName:SDLRPCParameterNameDiagonalScreenSize ofClass:NSNumber.class error:nil];
}

- (void)setPixelPerInch:(nullable NSNumber<SDLFloat> *)pixelPerInch {
    [self.store sdl_setObject:pixelPerInch forName:SDLRPCParameterNamePixelPerInch];
}

- (nullable NSNumber<SDLFloat> *)pixelPerInch {
    return [self.store sdl_objectForName:SDLRPCParameterNamePixelPerInch ofClass:NSNumber.class error:nil];
}

- (void)setScale:(nullable NSNumber<SDLFloat> *)scale {
    [self.store sdl_setObject:scale forName:SDLRPCParameterNameScale];
}

- (nullable NSNumber<SDLFloat> *)scale {
    return [self.store sdl_objectForName:SDLRPCParameterNameScale ofClass:NSNumber.class error:nil];
}

- (void)setAdditionalVideoStreamingCapabilities:(nullable NSArray <SDLVideoStreamingCapability*> *)capabilities {
    [self.store sdl_setObject:capabilities forName:SDLRPCParameterNameAdditionalVideoStreamingCapabilities];
}

- (nullable NSArray <SDLVideoStreamingCapability*> *)additionalVideoStreamingCapabilities {
    NSError *error = nil;
    return [self.store sdl_objectsForName:SDLRPCParameterNameAdditionalVideoStreamingCapabilities ofClass:SDLVideoStreamingCapability.class error:&error];
}

// note: it does not copy everything
- (instancetype)shortCopy {
    typeof(self) copyObject = [[self.class alloc] initWithPreferredResolution:self.preferredResolution maxBitrate:self.maxBitrate supportedFormats:self.supportedFormats hapticDataSupported:self.hapticSpatialDataSupported diagonalScreenSize:self.diagonalScreenSize ppi:self.pixelPerInch scale:self.scale];
    return copyObject;
}

- (NSArray <SDLVideoStreamingCapability*>*)allVideoStreamingCapabilitiesPlain {
    NSMutableArray *capabilitiesArray = [NSMutableArray arrayWithObject:[self shortCopy]];
    for (SDLVideoStreamingCapability *capability in self.additionalVideoStreamingCapabilities) {
        NSArray* childCapabilities = [capability allVideoStreamingCapabilitiesPlain];
        if (childCapabilities.count) {
            [capabilitiesArray addObjectsFromArray:childCapabilities];
        }
    }
    return capabilitiesArray;
}

- (SDLImageResolution *)makeImageResolution {
    const float scale = (nil == self.scale) ? 1.0 : self.scale.floatValue;
    const CGSize size = [SDLStreamingVideoScaleManager scale:scale size:self.preferredResolution.makeSize];
    return [[SDLImageResolution alloc] initWithWidth:(uint16_t)size.width height:(uint16_t)size.height];
}

- (NSArray<SDLImageResolution *> *)allImageResolutions {
    NSMutableArray<SDLImageResolution *> *resolutions = [NSMutableArray arrayWithCapacity:self.additionalVideoStreamingCapabilities.count + 1];
    if (self.preferredResolution) {
        [resolutions addObject:self.preferredResolution];
    }
    for (SDLVideoStreamingCapability *nextCapability in self.additionalVideoStreamingCapabilities) {
        if (nextCapability.preferredResolution) {
            [resolutions addObject:nextCapability.preferredResolution];
        }
    }
    return resolutions;
}

- (NSArray<SDLImageResolution *> *)allImageResolutionsScaled {
    NSMutableArray<SDLImageResolution *> *resolutions = [NSMutableArray arrayWithCapacity:self.additionalVideoStreamingCapabilities.count + 1];
    SDLImageResolution *imgResolution = [self makeImageResolution];
    if (imgResolution) {
        [resolutions addObject:imgResolution];
    }
    for (SDLVideoStreamingCapability *nextCapability in self.additionalVideoStreamingCapabilities) {
        SDLImageResolution *imgResolution = [nextCapability makeImageResolution];
        if (imgResolution) {
            [resolutions addObject:imgResolution];
        }
    }
    return resolutions;
}


- (NSString *)description {
    NSMutableString *formats = [NSMutableString string];
    for (SDLVideoStreamingFormat * f in self.supportedFormats) {
        [formats appendFormat:@"%@; ", f];
    }
    return [NSString stringWithFormat:@"<%@:%p>{\n\tsupportedFormats:%@\n\tpreferredResolution:%@\n\tmaxBitrate:%@\n\thapticSpatialDataSupported:%@\n\tdiagonalScreenSize:%@\n\tpixelPerInch:%@\n\tscale:%@\n\tadditionalVideoStreamingCapabilities[%d]:%@ }", NSStringFromClass(self.class), self, formats, self.preferredResolution, self.maxBitrate, self.hapticSpatialDataSupported.boolValue ? @"YES" : @"NO", self.diagonalScreenSize, self.pixelPerInch, self.scale, (int)self.additionalVideoStreamingCapabilities.count, self.additionalVideoStreamingCapabilities];
}

@end

NS_ASSUME_NONNULL_END
