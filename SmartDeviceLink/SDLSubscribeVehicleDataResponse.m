//  SDLSubscribeVehicleDataResponse.m
//


#import "SDLSubscribeVehicleDataResponse.h"

#import "SDLNames.h"
#import "SDLVehicleDataResult.h"


@implementation SDLSubscribeVehicleDataResponse

- (instancetype)init {
    if (self = [super initWithName:NAMES_SubscribeVehicleData]) {
    }
    return self;
}

- (instancetype)initWithDictionary:(NSMutableDictionary *)dict {
    if (self = [super initWithDictionary:dict]) {
    }
    return self;
}

- (void)setGps:(SDLVehicleDataResult *)gps {
    if (gps != nil) {
        [parameters setObject:gps forKey:NAMES_gps];
    } else {
        [parameters removeObjectForKey:NAMES_gps];
    }
}

- (SDLVehicleDataResult *)gps {
    NSObject *obj = [parameters objectForKey:NAMES_gps];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setGpsArray:(SDLVehicleDataResult *)gpsArray {
    if (gpsArray != nil) {
        [parameters setObject:gpsArray forKey:NAMES_gpsArray];
    } else {
        [parameters removeObjectForKey:NAMES_gpsArray];
    }
}

- (SDLVehicleDataResult *)gpsArray {
    NSObject *obj = [parameters objectForKey:NAMES_gpsArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setGpsDrArray:(SDLVehicleDataResult *)gpsDrArray {
    if (gpsDrArray != nil) {
        [parameters setObject:gpsDrArray forKey:NAMES_gpsDrArray];
    } else {
        [parameters removeObjectForKey:NAMES_gpsDrArray];
    }
}

- (SDLVehicleDataResult *)gpsDrArray {
    NSObject *obj = [parameters objectForKey:NAMES_gpsDrArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setSpeed:(SDLVehicleDataResult *)speed {
    if (speed != nil) {
        [parameters setObject:speed forKey:NAMES_speed];
    } else {
        [parameters removeObjectForKey:NAMES_speed];
    }
}

- (SDLVehicleDataResult *)speed {
    NSObject *obj = [parameters objectForKey:NAMES_speed];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setSpeedArray:(SDLVehicleDataResult *)speedArray {
    if (speedArray != nil) {
        [parameters setObject:speedArray forKey:NAMES_speedArray];
    } else {
        [parameters removeObjectForKey:NAMES_speedArray];
    }
}

- (SDLVehicleDataResult *)speedArray {
    NSObject *obj = [parameters objectForKey:NAMES_speedArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setRpm:(SDLVehicleDataResult *)rpm {
    if (rpm != nil) {
        [parameters setObject:rpm forKey:NAMES_rpm];
    } else {
        [parameters removeObjectForKey:NAMES_rpm];
    }
}

- (SDLVehicleDataResult *)rpm {
    NSObject *obj = [parameters objectForKey:NAMES_rpm];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setRpmArray:(SDLVehicleDataResult *)rpmArray {
    if (rpmArray != nil) {
        [parameters setObject:rpmArray forKey:NAMES_rpmArray];
    } else {
        [parameters removeObjectForKey:NAMES_rpmArray];
    }
}

- (SDLVehicleDataResult *)rpmArray {
    NSObject *obj = [parameters objectForKey:NAMES_rpmArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setFuelLevel:(SDLVehicleDataResult *)fuelLevel {
    if (fuelLevel != nil) {
        [parameters setObject:fuelLevel forKey:NAMES_fuelLevel];
    } else {
        [parameters removeObjectForKey:NAMES_fuelLevel];
    }
}

- (SDLVehicleDataResult *)fuelLevel {
    NSObject *obj = [parameters objectForKey:NAMES_fuelLevel];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setFuelLevelArray:(SDLVehicleDataResult *)fuelLevelArray {
    if (fuelLevelArray != nil) {
        [parameters setObject:fuelLevelArray forKey:NAMES_fuelLevelArray];
    } else {
        [parameters removeObjectForKey:NAMES_fuelLevelArray];
    }
}

- (SDLVehicleDataResult *)fuelLevelArray {
    NSObject *obj = [parameters objectForKey:NAMES_fuelLevelArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setFuelLevel_State:(SDLVehicleDataResult *)fuelLevel_State {
    if (fuelLevel_State != nil) {
        [parameters setObject:fuelLevel_State forKey:NAMES_fuelLevel_State];
    } else {
        [parameters removeObjectForKey:NAMES_fuelLevel_State];
    }
}

- (SDLVehicleDataResult *)fuelLevel_State {
    NSObject *obj = [parameters objectForKey:NAMES_fuelLevel_State];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setFuelLevel_StateArray:(SDLVehicleDataResult *)fuelLevel_StateArray {
    if (fuelLevel_StateArray != nil) {
        [parameters setObject:fuelLevel_StateArray forKey:NAMES_fuelLevel_StateArray];
    } else {
        [parameters removeObjectForKey:NAMES_fuelLevel_StateArray];
    }
}

- (SDLVehicleDataResult *)fuelLevel_StateArray {
    NSObject *obj = [parameters objectForKey:NAMES_fuelLevel_StateArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setInstantFuelConsumption:(SDLVehicleDataResult *)instantFuelConsumption {
    if (instantFuelConsumption != nil) {
        [parameters setObject:instantFuelConsumption forKey:NAMES_instantFuelConsumption];
    } else {
        [parameters removeObjectForKey:NAMES_instantFuelConsumption];
    }
}

- (SDLVehicleDataResult *)instantFuelConsumption {
    NSObject *obj = [parameters objectForKey:NAMES_instantFuelConsumption];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setExternalTemperature:(SDLVehicleDataResult *)externalTemperature {
    if (externalTemperature != nil) {
        [parameters setObject:externalTemperature forKey:NAMES_externalTemperature];
    } else {
        [parameters removeObjectForKey:NAMES_externalTemperature];
    }
}

- (SDLVehicleDataResult *)externalTemperature {
    NSObject *obj = [parameters objectForKey:NAMES_externalTemperature];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setExternalTemperatureArray:(SDLVehicleDataResult *)externalTemperatureArray {
    if (externalTemperatureArray != nil) {
        [parameters setObject:externalTemperatureArray forKey:NAMES_externalTemperatureArray];
    } else {
        [parameters removeObjectForKey:NAMES_externalTemperatureArray];
    }
}

- (SDLVehicleDataResult *)externalTemperatureArray {
    NSObject *obj = [parameters objectForKey:NAMES_externalTemperatureArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setPrndl:(SDLVehicleDataResult *)prndl {
    if (prndl != nil) {
        [parameters setObject:prndl forKey:NAMES_prndl];
    } else {
        [parameters removeObjectForKey:NAMES_prndl];
    }
}

- (SDLVehicleDataResult *)prndl {
    NSObject *obj = [parameters objectForKey:NAMES_prndl];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setPrndlArray:(SDLVehicleDataResult *)prndlArray {
    if (prndlArray != nil) {
        [parameters setObject:prndlArray forKey:NAMES_prndlArray];
    } else {
        [parameters removeObjectForKey:NAMES_prndlArray];
    }
}

- (SDLVehicleDataResult *)prndlArray {
    NSObject *obj = [parameters objectForKey:NAMES_prndlArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setTirePressure:(SDLVehicleDataResult *)tirePressure {
    if (tirePressure != nil) {
        [parameters setObject:tirePressure forKey:NAMES_tirePressure];
    } else {
        [parameters removeObjectForKey:NAMES_tirePressure];
    }
}

- (SDLVehicleDataResult *)tirePressure {
    NSObject *obj = [parameters objectForKey:NAMES_tirePressure];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setTirePressureArray:(SDLVehicleDataResult *)tirePressureArray {
    if (tirePressureArray != nil) {
        [parameters setObject:tirePressureArray forKey:NAMES_tirePressureArray];
    } else {
        [parameters removeObjectForKey:NAMES_tirePressureArray];
    }
}

- (SDLVehicleDataResult *)tirePressureArray {
    NSObject *obj = [parameters objectForKey:NAMES_tirePressureArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setOdometer:(SDLVehicleDataResult *)odometer {
    if (odometer != nil) {
        [parameters setObject:odometer forKey:NAMES_odometer];
    } else {
        [parameters removeObjectForKey:NAMES_odometer];
    }
}

- (SDLVehicleDataResult *)odometer {
    NSObject *obj = [parameters objectForKey:NAMES_odometer];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setBeltStatus:(SDLVehicleDataResult *)beltStatus {
    if (beltStatus != nil) {
        [parameters setObject:beltStatus forKey:NAMES_beltStatus];
    } else {
        [parameters removeObjectForKey:NAMES_beltStatus];
    }
}

- (SDLVehicleDataResult *)beltStatus {
    NSObject *obj = [parameters objectForKey:NAMES_beltStatus];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setBodyInformation:(SDLVehicleDataResult *)bodyInformation {
    if (bodyInformation != nil) {
        [parameters setObject:bodyInformation forKey:NAMES_bodyInformation];
    } else {
        [parameters removeObjectForKey:NAMES_bodyInformation];
    }
}

- (SDLVehicleDataResult *)bodyInformation {
    NSObject *obj = [parameters objectForKey:NAMES_bodyInformation];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setDeviceStatus:(SDLVehicleDataResult *)deviceStatus {
    if (deviceStatus != nil) {
        [parameters setObject:deviceStatus forKey:NAMES_deviceStatus];
    } else {
        [parameters removeObjectForKey:NAMES_deviceStatus];
    }
}

- (SDLVehicleDataResult *)deviceStatus {
    NSObject *obj = [parameters objectForKey:NAMES_deviceStatus];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setDriverBraking:(SDLVehicleDataResult *)driverBraking {
    if (driverBraking != nil) {
        [parameters setObject:driverBraking forKey:NAMES_driverBraking];
    } else {
        [parameters removeObjectForKey:NAMES_driverBraking];
    }
}

- (SDLVehicleDataResult *)driverBraking {
    NSObject *obj = [parameters objectForKey:NAMES_driverBraking];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setFuelRemainingRangeArray:(SDLVehicleDataResult *)fuelRemainingRangeArray {
    if (fuelRemainingRangeArray != nil) {
        [parameters setObject:fuelRemainingRangeArray forKey:NAMES_fuelRemainingRangeArray];
    } else {
        [parameters removeObjectForKey:NAMES_fuelRemainingRangeArray];
    }
}

- (SDLVehicleDataResult *)fuelRemainingRangeArray {
    NSObject *obj = [parameters objectForKey:NAMES_fuelRemainingRangeArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setBrakePedalPositionArray:(SDLVehicleDataResult *)brakePedalPositionArray {
    if (brakePedalPositionArray != nil) {
        [parameters setObject:brakePedalPositionArray forKey:NAMES_brakePedalPositionArray];
    } else {
        [parameters removeObjectForKey:NAMES_brakePedalPositionArray];
    }
}

- (SDLVehicleDataResult *)brakePedalPositionArray {
    NSObject *obj = [parameters objectForKey:NAMES_brakePedalPositionArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setWiperStatus:(SDLVehicleDataResult *)wiperStatus {
    if (wiperStatus != nil) {
        [parameters setObject:wiperStatus forKey:NAMES_wiperStatus];
    } else {
        [parameters removeObjectForKey:NAMES_wiperStatus];
    }
}

- (SDLVehicleDataResult *)wiperStatus {
    NSObject *obj = [parameters objectForKey:NAMES_wiperStatus];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setHeadLampStatus:(SDLVehicleDataResult *)headLampStatus {
    if (headLampStatus != nil) {
        [parameters setObject:headLampStatus forKey:NAMES_headLampStatus];
    } else {
        [parameters removeObjectForKey:NAMES_headLampStatus];
    }
}

- (SDLVehicleDataResult *)headLampStatus {
    NSObject *obj = [parameters objectForKey:NAMES_headLampStatus];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setEngineTorque:(SDLVehicleDataResult *)engineTorque {
    if (engineTorque != nil) {
        [parameters setObject:engineTorque forKey:NAMES_engineTorque];
    } else {
        [parameters removeObjectForKey:NAMES_engineTorque];
    }
}

- (SDLVehicleDataResult *)engineTorque {
    NSObject *obj = [parameters objectForKey:NAMES_engineTorque];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setEngineTorqueArray:(SDLVehicleDataResult *)engineTorqueArray {
    if (engineTorqueArray != nil) {
        [parameters setObject:engineTorqueArray forKey:NAMES_engineTorqueArray];
    } else {
        [parameters removeObjectForKey:NAMES_engineTorqueArray];
    }
}

- (SDLVehicleDataResult *)engineTorqueArray {
    NSObject *obj = [parameters objectForKey:NAMES_engineTorqueArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setAccPedalPosition:(SDLVehicleDataResult *)accPedalPosition {
    if (accPedalPosition != nil) {
        [parameters setObject:accPedalPosition forKey:NAMES_accPedalPosition];
    } else {
        [parameters removeObjectForKey:NAMES_accPedalPosition];
    }
}

- (SDLVehicleDataResult *)accPedalPosition {
    NSObject *obj = [parameters objectForKey:NAMES_accPedalPosition];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setAccPedalPositionArray:(SDLVehicleDataResult *)accPedalPositionArray {
    if (accPedalPositionArray != nil) {
        [parameters setObject:accPedalPositionArray forKey:NAMES_accPedalPositionArray];
    } else {
        [parameters removeObjectForKey:NAMES_accPedalPositionArray];
    }
}

- (SDLVehicleDataResult *)accPedalPositionArray {
    NSObject *obj = [parameters objectForKey:NAMES_accPedalPositionArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setSteeringWheelAngle:(SDLVehicleDataResult *)steeringWheelAngle {
    if (steeringWheelAngle != nil) {
        [parameters setObject:steeringWheelAngle forKey:NAMES_steeringWheelAngle];
    } else {
        [parameters removeObjectForKey:NAMES_steeringWheelAngle];
    }
}

- (SDLVehicleDataResult *)steeringWheelAngle {
    NSObject *obj = [parameters objectForKey:NAMES_steeringWheelAngle];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setSteeringWheelAngleArray:(SDLVehicleDataResult *)steeringWheelAngleArray {
    if (steeringWheelAngleArray != nil) {
        [parameters setObject:steeringWheelAngleArray forKey:NAMES_steeringWheelAngleArray];
    } else {
        [parameters removeObjectForKey:NAMES_steeringWheelAngleArray];
    }
}

- (SDLVehicleDataResult *)steeringWheelAngleArray {
    NSObject *obj = [parameters objectForKey:NAMES_steeringWheelAngleArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setAccelerometerArray:(SDLVehicleDataResult *)accelerometerArray {
    if (accelerometerArray != nil) {
        [parameters setObject:accelerometerArray forKey:NAMES_accelerometerArray];
    } else {
        [parameters removeObjectForKey:NAMES_accelerometerArray];
    }
}

- (SDLVehicleDataResult *)accelerometerArray {
    NSObject *obj = [parameters objectForKey:NAMES_accelerometerArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setGyroscopeArray:(SDLVehicleDataResult *)gyroscopeArray {
    if (gyroscopeArray != nil) {
        [parameters setObject:gyroscopeArray forKey:NAMES_gyroscopeArray];
    } else {
        [parameters removeObjectForKey:NAMES_gyroscopeArray];
    }
}

- (SDLVehicleDataResult *)gyroscopeArray {
    NSObject *obj = [parameters objectForKey:NAMES_gyroscopeArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setWheelSpeedsArray:(SDLVehicleDataResult *)wheelSpeedsArray {
    if (wheelSpeedsArray != nil) {
        [parameters setObject:wheelSpeedsArray forKey:NAMES_wheelSpeedsArray];
    } else {
        [parameters removeObjectForKey:NAMES_wheelSpeedsArray];
    }
}

- (SDLVehicleDataResult *)wheelSpeedsArray {
    NSObject *obj = [parameters objectForKey:NAMES_wheelSpeedsArray];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setECallInfo:(SDLVehicleDataResult *)eCallInfo {
    if (eCallInfo != nil) {
        [parameters setObject:eCallInfo forKey:NAMES_eCallInfo];
    } else {
        [parameters removeObjectForKey:NAMES_eCallInfo];
    }
}

- (SDLVehicleDataResult *)eCallInfo {
    NSObject *obj = [parameters objectForKey:NAMES_eCallInfo];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setAirbagStatus:(SDLVehicleDataResult *)airbagStatus {
    if (airbagStatus != nil) {
        [parameters setObject:airbagStatus forKey:NAMES_airbagStatus];
    } else {
        [parameters removeObjectForKey:NAMES_airbagStatus];
    }
}

- (SDLVehicleDataResult *)airbagStatus {
    NSObject *obj = [parameters objectForKey:NAMES_airbagStatus];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setEmergencyEvent:(SDLVehicleDataResult *)emergencyEvent {
    if (emergencyEvent != nil) {
        [parameters setObject:emergencyEvent forKey:NAMES_emergencyEvent];
    } else {
        [parameters removeObjectForKey:NAMES_emergencyEvent];
    }
}

- (SDLVehicleDataResult *)emergencyEvent {
    NSObject *obj = [parameters objectForKey:NAMES_emergencyEvent];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setClusterModes:(SDLVehicleDataResult *)clusterModes {
    if (clusterModes != nil) {
        [parameters setObject:clusterModes forKey:NAMES_clusterModes];
    } else {
        [parameters removeObjectForKey:NAMES_clusterModes];
    }
}

- (SDLVehicleDataResult *)clusterModes {
    NSObject *obj = [parameters objectForKey:NAMES_clusterModes];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

- (void)setMyKey:(SDLVehicleDataResult *)myKey {
    if (myKey != nil) {
        [parameters setObject:myKey forKey:NAMES_myKey];
    } else {
        [parameters removeObjectForKey:NAMES_myKey];
    }
}

- (SDLVehicleDataResult *)myKey {
    NSObject *obj = [parameters objectForKey:NAMES_myKey];
    if (obj == nil || [obj isKindOfClass:SDLVehicleDataResult.class]) {
        return (SDLVehicleDataResult *)obj;
    } else {
        return [[SDLVehicleDataResult alloc] initWithDictionary:(NSMutableDictionary *)obj];
    }
}

@end
