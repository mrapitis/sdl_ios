//
//  SDLSliderResponseSpec.m
//  SmartDeviceLink


#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLSliderResponse.h"
#import "SDLDIDResult.h"
#import "SDLNames.h"

QuickSpecBegin(SDLSliderResponseSpec)

describe(@"Getter/Setter Tests", ^ {
    it(@"Should set and get correctly", ^ {
        SDLSliderResponse* testResponse = [[SDLSliderResponse alloc] init];
        
        testResponse.sliderPosition = @13;
        
        expect(testResponse.sliderPosition).to(equal(@13));
    });
    
    it(@"Should get correctly when initialized", ^ {
        NSMutableDictionary* dict = [@{SDLNameResponse:
                                           @{SDLNameParameters:
                                                 @{SDLNameSliderPosition:@13},
                                             SDLNameOperationName:SDLNameSlider}} mutableCopy];
        SDLSliderResponse* testResponse = [[SDLSliderResponse alloc] initWithDictionary:dict];
        
        expect(testResponse.sliderPosition).to(equal(@13));
    });
    
    it(@"Should return nil if not set", ^ {
        SDLSliderResponse* testResponse = [[SDLSliderResponse alloc] init];
        
        expect(testResponse.sliderPosition).to(beNil());
    });
});

QuickSpecEnd
