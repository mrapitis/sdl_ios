//
//  SDLTimer.m
//

#import "SDLTimer.h"

NS_ASSUME_NONNULL_BEGIN

@interface SDLTimer () <SDLTimerTargetDelegate>

@property (strong, nonatomic, nullable) NSTimer *timer;
@property (assign, nonatomic) BOOL timerRunning;
@property (assign, nonatomic) BOOL repeat;
@end


@implementation SDLTimer

- (instancetype)init {
    if (self = [super init]) {
        _duration = 0;
        _timerRunning = NO;
    }
    return self;
}

- (instancetype)initWithDuration:(float)duration {
    return [self initWithDuration:duration repeat:NO];
}

- (instancetype)initWithDuration:(float)duration repeat:(BOOL)repeat {
    self = [super init];
    if (self) {
        _duration = duration;
        _repeat = repeat;
        _timerRunning = NO;
    }
    return self;
}

- (void)dealloc {
    [self cancel];
}

- (void)start {
    if (self.duration > 0) {
        [self stopAndDestroyTimer];
        self.timer = [NSTimer timerWithTimeInterval:self.duration target:self selector:@selector(timerElapsed) userInfo:nil repeats:self.repeat];
        [[NSRunLoop mainRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
        self.timerRunning = YES;
    }
}

- (void)cancel {
    [self stopAndDestroyTimer];
    if (self.timerRunning && self.canceledBlock != nil) {
        self.timerRunning = NO;
        self.canceledBlock();
    }
    self.timerRunning = NO;
}

- (void)timerElapsed {
    if (self.repeat == NO) {
        [self stopAndDestroyTimer];
        self.timerRunning = NO;
    }
    if (self.elapsedBlock != nil) {
        self.elapsedBlock();
    }
}

- (void)stopAndDestroyTimer {
    if (self.timer != nil) {
        [self.timer invalidate];
        self.timer = nil;
    }
}

@end

NS_ASSUME_NONNULL_END
