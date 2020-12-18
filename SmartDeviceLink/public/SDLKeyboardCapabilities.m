/*
 * Copyright (c) 2020, SmartDeviceLink Consortium, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice, this
 * list of conditions and the following disclaimer.
 *
 * Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following
 * disclaimer in the documentation and/or other materials provided with the
 * distribution.
 *
 * Neither the name of the SmartDeviceLink Consortium Inc. nor the names of
 * its contributors may be used to endorse or promote products derived
 * from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

#import "NSMutableDictionary+Store.h"
#import "SDLConfigurableKeyboards.h"
#import "SDLKeyboardCapabilities.h"
#import "SDLKeyboardLayout.h"
#import "SDLRPCParameterNames.h"

NS_ASSUME_NONNULL_BEGIN
@implementation SDLKeyboardCapabilities

- (instancetype)initWithMaskInputCharactersSupported:(nullable NSNumber<SDLBool> *)maskInputCharactersSupported supportedKeyboardLayouts:(nullable NSArray<SDLKeyboardLayout> *)supportedKeyboardLayouts configurableKeys:(nullable NSArray<SDLConfigurableKeyboards *> *)configurableKeys {
    self = [self init];
    if (!self) {
        return nil;
    }
    self.maskInputCharactersSupported = maskInputCharactersSupported;
    self.supportedKeyboardLayouts = supportedKeyboardLayouts;
    self.configurableKeys = configurableKeys;
    return self;
}

- (void)setMaskInputCharactersSupported:(nullable NSNumber<SDLBool> *)maskInputCharactersSupported {
    [self.store sdl_setObject:maskInputCharactersSupported forName:SDLRPCParameterNameMaskInputCharactersSupported];
}

- (nullable NSNumber<SDLBool> *)maskInputCharactersSupported {
    return [self.store sdl_objectForName:SDLRPCParameterNameMaskInputCharactersSupported ofClass:NSNumber.class error:nil];
}

- (void)setSupportedKeyboardLayouts:(nullable NSArray<SDLKeyboardLayout> *)supportedKeyboardLayouts {
    [self.store sdl_setObject:supportedKeyboardLayouts forName:SDLRPCParameterNameSupportedKeyboardLayouts];
}

- (nullable NSArray<SDLKeyboardLayout> *)supportedKeyboardLayouts {
    return [self.store sdl_enumsForName:SDLRPCParameterNameSupportedKeyboardLayouts error:nil];
}

- (void)setConfigurableKeys:(nullable NSArray<SDLConfigurableKeyboards *> *)configurableKeys {
    [self.store sdl_setObject:configurableKeys forName:SDLRPCParameterNameConfigurableKeys];
}

- (nullable NSArray<SDLConfigurableKeyboards *> *)configurableKeys {
    return [self.store sdl_objectsForName:SDLRPCParameterNameConfigurableKeys ofClass:SDLConfigurableKeyboards.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
