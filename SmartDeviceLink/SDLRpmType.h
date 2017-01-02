//
//  SDLRpmType.h
//  SmartDeviceLink-iOS
//
//  Created by CHDSEZ318988DADM on 21/12/16.
//  Copyright © 2016 smartdevicelink. All rights reserved.
//

#import <SmartDeviceLink/SmartDeviceLink.h>

@interface SDLRpmType : SDLRPCStruct

/**
 * @abstract Constructs a new SDLRpmType object
 */
- (instancetype)init;

/**
 * @abstract Constructs a new SDLRpmType object indicated by the NSMutableDictionary
 * parameter
 * @param dict The dictionary to use
 */
- (instancetype)initWithDictionary:(NSMutableDictionary *)dict;

/**
 * @abstract The number of revolutions per minute of the engine.
 * Integer 0 - 20000
 */
@property (strong) NSNumber *value;

/**
*  @abstract
*      Timestamp in which the RPM was recorded.
*/
@property (strong) NSNumber *timeStamp;

@end
