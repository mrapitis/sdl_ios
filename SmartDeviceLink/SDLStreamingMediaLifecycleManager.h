//
//  SDLStreamingMediaLifecycleManager.h
//  SmartDeviceLink-iOS
//
//  Created by Muller, Alexander (A.) on 2/16/17.
//  Copyright © 2017 smartdevicelink. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <VideoToolbox/VideoToolbox.h>

#import "SDLHMILevel.h"
#import "SDLProtocolListener.h"
#import "SDLStreamingMediaManagerConstants.h"

@class SDLAbstractProtocol;
@class SDLStateMachine;
@class SDLTouchManager;

NS_ASSUME_NONNULL_BEGIN

typedef NSString SDLAppState;
extern SDLAppState *const SDLAppStateInactive;
extern SDLAppState *const SDLAppStateActive;

typedef NSString SDLVideoStreamState;
extern SDLVideoStreamState *const SDLVideoStreamStateStopped;
extern SDLVideoStreamState *const SDLVideoStreamStateStarting;
extern SDLVideoStreamState *const SDLVideoStreamStateReady;
extern SDLVideoStreamState *const SDLVideoStreamStateShuttingDown;

typedef NSString SDLAudioStreamState;
extern SDLAudioStreamState *const SDLAudioStreamStateStopped;
extern SDLAudioStreamState *const SDLAudioStreamStateStarting;
extern SDLAudioStreamState *const SDLAudioStreamStateReady;
extern SDLAudioStreamState *const SDLAudioStreamStateShuttingDown;


#pragma mark - Interface

@interface SDLStreamingMediaLifecycleManager : NSObject <SDLProtocolListener>

@property (strong, nonatomic, readonly) SDLStateMachine *appStateMachine;
@property (strong, nonatomic, readonly) SDLStateMachine *videoStreamStateMachine;
@property (strong, nonatomic, readonly) SDLStateMachine *audioStreamStateMachine;

@property (strong, nonatomic, readonly) SDLAppState *currentAppState;
@property (strong, nonatomic, readonly) SDLAudioStreamState *currentAudioStreamState;
@property (strong, nonatomic, readonly) SDLVideoStreamState *currentVideoStreamState;

@property (copy, nonatomic, nullable) SDLHMILevel hmiLevel;

@property (assign, nonatomic, readonly, getter=shouldRestartVideoStream) BOOL restartVideoStream;

/**
 *  Touch Manager responsible for providing touch event notifications.
 */
@property (nonatomic, strong, readonly) SDLTouchManager *touchManager;

/**
 *  Whether or not video streaming is supported
 *
 *  @see SDLRegisterAppInterface SDLDisplayCapabilities
 */
@property (assign, nonatomic, readonly, getter=isVideoStreamingSupported) BOOL videoStreamingSupported;

/**
 *  Whether or not audio streaming is supported. Currently this is the same as videoStreamingSupported.
 */
@property (assign, nonatomic, readonly, getter=isAudioStreamingSupported) BOOL audioStreamingSupported;

/**
 *  Whether or not the video session is connected.
 */
@property (assign, nonatomic, readonly, getter=isVideoConnected) BOOL videoConnected;

/**
 *  Whether or not the video session is encrypted. This may be different than the requestedEncryptionType.
 */
@property (assign, nonatomic, readonly, getter=isVideoEncrypted) BOOL videoEncrypted;

/**
 *  Whether or not the audio session is connected.
 */
@property (assign, nonatomic, readonly, getter=isAudioConnected) BOOL audioConnected;

/**
 *  Whether or not the audio session is encrypted. This may be different than the requestedEncryptionType.
 */
@property (assign, nonatomic, readonly, getter=isAudioEncrypted) BOOL audioEncrypted;

/**
 *  Whether or not the video stream is paused due to either the application being backgrounded, the HMI state being either NONE or BACKGROUND, or the video stream not being ready.
 */
@property (assign, nonatomic, readonly, getter=isVideoStreamingPaused) BOOL videoStreamingPaused;

/**
 *  This is the current screen size of a connected display. This will be the size the video encoder uses to encode the raw image data.
 */
@property (assign, nonatomic, readonly) CGSize screenSize;

/**
 *  The pixel buffer pool reference returned back from an active VTCompressionSessionRef encoder.
 *
 *  @warning    This will only return a valid pixel buffer pool after the encoder has been initialized (when the video     session has started).
 *  @discussion Clients may call this once and retain the resulting pool, this call is cheap enough that it's OK to call it once per frame.
 */
@property (assign, nonatomic, readonly, nullable) CVPixelBufferPoolRef pixelBufferPool;

/**
 *  The requested encryption type when a session attempts to connect. This setting applies to both video and audio sessions.
 *
 *  DEFAULT: SDLStreamingEncryptionFlagAuthenticateAndEncrypt
 */
@property (assign, nonatomic) SDLStreamingEncryptionFlag requestedEncryptionType;

/**
 *  Creates a streaming manager with a specified encryption type.
 *
 *  @param encryption               The encryption type requested when starting to stream.
 *  @param videoEncoderSettings     The video encoder settings to use with SDLVideoEncoder.
 *
 *  @return An instance of SDLStreamingMediaManager
 */
- (instancetype)initWithEncryption:(SDLStreamingEncryptionFlag)encryption videoEncoderSettings:(nullable NSDictionary<NSString *, id> *)videoEncoderSettings NS_DESIGNATED_INITIALIZER;

/**
 *  Start the manager with a completion block that will be called when startup completes. This is used internally. To use an SDLStreamingMediaManager, you should use the manager found on `SDLManager`.
 *
 *  @param completionHandler    The block to be called when the manager's setup is complete.
 */
- (void)startWithProtocol:(SDLAbstractProtocol*)protocol completionHandler:(void (^)(BOOL success, NSError *__nullable error))completionHandler;

/**
 *  Stop the manager. This method is used internally.
 */
- (void)stop;

/**
 *  This method receives raw image data and will run iOS8+'s hardware video encoder to turn the data into a video stream, which will then be passed to the connected head unit.
 *
 *  @param imageBuffer  A CVImageBufferRef to be encoded by Video Toolbox
 *
 *  @return Whether or not the data was successfully encoded and sent.
 */
- (BOOL)sendVideoData:(CVImageBufferRef)imageBuffer;

/**
 *  This method receives raw image data and will run iOS8+'s hardware video encoder to turn the data into a video stream, which will then be passed to the connected head unit.
 *
 *  @param imageBuffer  A CVImageBufferRef to be encoded by Video Toolbox
 *  @param presentationTimestamp A presentation timestamp for the frame, or kCMTimeInvalid if timestamp is unknown. If it's valid, it must be greater than the previous one.
 *
 *  @return Whether or not the data was successfully encoded and sent.
 */
- (BOOL)sendVideoData:(CVImageBufferRef)imageBuffer presentationTimestamp:(CMTime)presentationTimestamp;

/**
 *  This method receives PCM audio data and will attempt to send that data across to the head unit for immediate playback
 *
 *  @param audioData    The data in PCM audio format, to be played
 *
 *  @return Whether or not the data was successfully sent.
 */
- (BOOL)sendAudioData:(NSData *)audioData;


@end

NS_ASSUME_NONNULL_END
