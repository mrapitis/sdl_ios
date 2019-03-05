//  SDLFunctionID.h
//

#import <Foundation/Foundation.h>
#import "NSNumber+NumberType.h"
#import "SDLNames.h"

NS_ASSUME_NONNULL_BEGIN

@interface SDLFunctionID : NSObject

+ (instancetype)sharedInstance;

- (nullable SDLName)functionNameForId:(UInt32)functionID;
- (nullable NSNumber<SDLInt> *)functionIdForName:(SDLName)functionName;

@end

NS_ASSUME_NONNULL_END
