//  SDLWheelSpeedsData.m
//

#import "SDLWheelSpeedsData.h"
#import "SDLNames.h"

@implementation SDLWheelSpeedsData

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


- (void)setWhlRotatFr_No_Cnt:(NSNumber *)whlRotatFr_No_Cnt {
    if (whlRotatFr_No_Cnt != nil) {
        [store setObject:whlRotatFr_No_Cnt forKey:NAMES_whlRotatFr_No_Cnt];
    } else {
        [store removeObjectForKey:NAMES_whlRotatFr_No_Cnt];
    }
}

- (NSNumber *)whlRotatFr_No_Cnt {
    return [store objectForKey:NAMES_whlRotatFr_No_Cnt];
    
}

- (void)setWhlRotatFl_No_Cnt:(NSNumber *)whlRotatFl_No_Cnt {
    if (whlRotatFl_No_Cnt != nil) {
        [store setObject:whlRotatFl_No_Cnt forKey:NAMES_whlRotatFl_No_Cnt];
    } else {
        [store removeObjectForKey:NAMES_whlRotatFl_No_Cnt];
    }
}

- (NSNumber *)whlRotatFl_No_Cnt {
    return [store objectForKey:NAMES_whlRotatFl_No_Cnt];
    
}

- (void)setWhlRotatRr_No_Cnt:(NSNumber *)whlRotatRr_No_Cnt {
    if (whlRotatRr_No_Cnt != nil) {
        [store setObject:whlRotatRr_No_Cnt forKey:NAMES_whlRotatRr_No_Cnt];
    } else {
        [store removeObjectForKey:NAMES_whlRotatRr_No_Cnt];
    }
}

- (NSNumber *)whlRotatRr_No_Cnt {
    return [store objectForKey:NAMES_whlRotatRr_No_Cnt];
    
}
- (void)setWhlRotatRl_No_Cnt:(NSNumber *)whlRotatRl_No_Cnt {
    if (whlRotatRl_No_Cnt != nil) {
        [store setObject:whlRotatRl_No_Cnt forKey:NAMES_whlRotatRl_No_Cnt];
    } else {
        [store removeObjectForKey:NAMES_whlRotatRl_No_Cnt];
    }
}

- (NSNumber *)whlRotatRl_No_Cnt {
    return [store objectForKey:NAMES_whlRotatRl_No_Cnt];
    
}

- (void)setWhlDirFr_D_Actl:(NSNumber *)whlDirFr_D_Actl {
    if (whlDirFr_D_Actl != nil) {
        [store setObject:whlDirFr_D_Actl forKey:NAMES_whlDirFr_D_Actl];
    } else {
        [store removeObjectForKey:NAMES_whlDirFr_D_Actl];
    }
}

- (NSNumber *)whlDirFr_D_Actl {
    return [store objectForKey:NAMES_whlDirFr_D_Actl];
    
}

- (void)setWhlDirFl_D_Actl:(NSNumber *)whlDirFl_D_Actl {
    if (whlDirFl_D_Actl != nil) {
        [store setObject:whlDirFl_D_Actl forKey:NAMES_whlDirFl_D_Actl];
    } else {
        [store removeObjectForKey:NAMES_whlDirFl_D_Actl];
    }
}

- (NSNumber *)whlDirFl_D_Actl {
    return [store objectForKey:NAMES_whlDirFl_D_Actl];
    
}

- (void)setWhlDirRr_D_Actl:(NSNumber *)whlDirRr_D_Actl {
    if (whlDirRr_D_Actl != nil) {
        [store setObject:whlDirRr_D_Actl forKey:NAMES_whlDirRr_D_Actl];
    } else {
        [store removeObjectForKey:NAMES_whlDirRr_D_Actl];
    }
}

- (NSNumber *)whlDirRr_D_Actl {
    return [store objectForKey:NAMES_whlDirRr_D_Actl];
    
}

- (void)setWhlDirRl_D_Actl:(NSNumber *)whlDirRl_D_Actl {
    if (whlDirRl_D_Actl != nil) {
        [store setObject:whlDirRl_D_Actl forKey:NAMES_whlDirRl_D_Actl];
    } else {
        [store removeObjectForKey:NAMES_whlDirRl_D_Actl];
    }
}

- (NSNumber *)whlDirRl_D_Actl {
    return [store objectForKey:NAMES_whlDirRl_D_Actl];
    
}

@end
