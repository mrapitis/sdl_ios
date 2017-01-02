//  SDLUnsubscribeVehicleData.m
//


#import "SDLUnsubscribeVehicleData.h"

#import "SDLNames.h"

@implementation SDLUnsubscribeVehicleData

- (instancetype)init {
    if (self = [super initWithName:NAMES_UnsubscribeVehicleData]) {
    }
    return self;
}

- (instancetype)initWithDictionary:(NSMutableDictionary *)dict {
    if (self = [super initWithDictionary:dict]) {
    }
    return self;
}

- (instancetype)initWithAccelerationPedalPosition:(BOOL)accelerationPedalPosition airbagStatus:(BOOL)airbagStatus beltStatus:(BOOL)beltStatus bodyInformation:(BOOL)bodyInformation clusterModeStatus:(BOOL)clusterModeStatus deviceStatus:(BOOL)deviceStatus driverBraking:(BOOL)driverBraking eCallInfo:(BOOL)eCallInfo emergencyEvent:(BOOL)emergencyEvent engineTorque:(BOOL)engineTorque externalTemperature:(BOOL)externalTemperature fuelLevel:(BOOL)fuelLevel fuelLevelState:(BOOL)fuelLevelState gps:(BOOL)gps headLampStatus:(BOOL)headLampStatus instantFuelConsumption:(BOOL)instantFuelConsumption myKey:(BOOL)myKey odometer:(BOOL)odometer prndl:(BOOL)prndl rpm:(BOOL)rpm speed:(BOOL)speed steeringWheelAngle:(BOOL)steeringWheelAngle tirePressure:(BOOL)tirePressure wiperStatus:(BOOL)wiperStatus {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.accPedalPosition = @(accelerationPedalPosition);
    self.airbagStatus = @(airbagStatus);
    self.beltStatus = @(beltStatus);
    self.bodyInformation = @(bodyInformation);
    self.clusterModeStatus = @(clusterModeStatus);
    self.deviceStatus = @(deviceStatus);
    self.driverBraking = @(driverBraking);
    self.eCallInfo = @(eCallInfo);
    self.emergencyEvent = @(emergencyEvent);
    self.engineTorque = @(engineTorque);
    self.externalTemperature = @(externalTemperature);
    self.fuelLevel = @(fuelLevel);
    self.fuelLevel_State = @(fuelLevelState);
    self.myKey = @(myKey);
    self.odometer = @(odometer);
    self.gps = @(gps);
    self.headLampStatus = @(headLampStatus);
    self.instantFuelConsumption = @(instantFuelConsumption);
    self.prndl = @(prndl);
    self.rpm = @(rpm);
    self.speed = @(speed);
    self.steeringWheelAngle = @(steeringWheelAngle);
    self.tirePressure = @(tirePressure);
    self.wiperStatus = @(wiperStatus);

    return self;
}

- (void)setGps:(NSNumber *)gps {
    if (gps != nil) {
        [parameters setObject:gps forKey:NAMES_gps];
    } else {
        [parameters removeObjectForKey:NAMES_gps];
    }
}

- (NSNumber *)gps {
    return [parameters objectForKey:NAMES_gps];
}

- (void)setGpsArray:(NSNumber *)gpsArray {
    if (gpsArray != nil) {
        [parameters setObject:gpsArray forKey:NAMES_gpsArray];
    } else {
        [parameters removeObjectForKey:NAMES_gpsArray];
    }
}

- (NSNumber *)gpsArray {
    return [parameters objectForKey:NAMES_gpsArray];
}

- (void)setSpeed:(NSNumber *)speed {
    if (speed != nil) {
        [parameters setObject:speed forKey:NAMES_speed];
    } else {
        [parameters removeObjectForKey:NAMES_speed];
    }
}

- (NSNumber *)speed {
    return [parameters objectForKey:NAMES_speed];
}

- (void)setSpeedArray:(NSNumber *)speedArray {
    if (speedArray != nil) {
        [parameters setObject:speedArray forKey:NAMES_speedArray];
    } else {
        [parameters removeObjectForKey:NAMES_speedArray];
    }
}

- (NSNumber *)speedArray {
    return [parameters objectForKey:NAMES_speedArray];
    
}

- (void)setRpm:(NSNumber *)rpm {
    if (rpm != nil) {
        [parameters setObject:rpm forKey:NAMES_rpm];
    } else {
        [parameters removeObjectForKey:NAMES_rpm];
    }
}

- (NSNumber *)rpm {
    return [parameters objectForKey:NAMES_rpm];
}

- (void)setRpmArray:(NSNumber *)rpmArray {
    if (rpmArray != nil) {
        [parameters setObject:rpmArray forKey:NAMES_rpmArray];
    } else {
        [parameters removeObjectForKey:NAMES_rpmArray];
    }
}

- (NSNumber *)rpmArray {
    return [parameters objectForKey:NAMES_rpmArray];
}

- (void)setFuelLevel:(NSNumber *)fuelLevel {
    if (fuelLevel != nil) {
        [parameters setObject:fuelLevel forKey:NAMES_fuelLevel];
    } else {
        [parameters removeObjectForKey:NAMES_fuelLevel];
    }
}

- (NSNumber *)fuelLevel {
    return [parameters objectForKey:NAMES_fuelLevel];
}

- (void)setFuelLevelArray:(NSNumber *)fuelLevelArray {
    if (fuelLevelArray != nil) {
        [parameters setObject:fuelLevelArray forKey:NAMES_fuelLevelArray];
    } else {
        [parameters removeObjectForKey:NAMES_fuelLevelArray];
    }
}

- (NSNumber *)fuelLevelArray {
    return [parameters objectForKey:NAMES_fuelLevelArray];
}

- (void)setFuelLevel_State:(NSNumber *)fuelLevel_State {
    if (fuelLevel_State != nil) {
        [parameters setObject:fuelLevel_State forKey:NAMES_fuelLevel_State];
    } else {
        [parameters removeObjectForKey:NAMES_fuelLevel_State];
    }
}

- (NSNumber *)fuelLevel_State {
    return [parameters objectForKey:NAMES_fuelLevel_State];
}

- (void)setFuelLevel_StateArray:(NSNumber *)fuelLevel_StateArray {
    if (fuelLevel_StateArray != nil) {
        [parameters setObject:fuelLevel_StateArray forKey:NAMES_fuelLevel_StateArray];
    } else {
        [parameters removeObjectForKey:NAMES_fuelLevel_StateArray];
    }
}

- (NSNumber *)fuelLevel_StateArray {
    return [parameters objectForKey:NAMES_fuelLevel_StateArray];
}

- (void)setInstantFuelConsumption:(NSNumber *)instantFuelConsumption {
    if (instantFuelConsumption != nil) {
        [parameters setObject:instantFuelConsumption forKey:NAMES_instantFuelConsumption];
    } else {
        [parameters removeObjectForKey:NAMES_instantFuelConsumption];
    }
}

- (NSNumber *)instantFuelConsumption {
    return [parameters objectForKey:NAMES_instantFuelConsumption];
}

- (void)setExternalTemperature:(NSNumber *)externalTemperature {
    if (externalTemperature != nil) {
        [parameters setObject:externalTemperature forKey:NAMES_externalTemperature];
    } else {
        [parameters removeObjectForKey:NAMES_externalTemperature];
    }
}

- (void)setExternalTemperatureArray:(NSNumber *)externalTemperatureArray {
    if (externalTemperatureArray != nil) {
        [parameters setObject:externalTemperatureArray forKey:NAMES_externalTemperatureArray];
    } else {
        [parameters removeObjectForKey:NAMES_externalTemperatureArray];
    }
}

- (NSNumber *)externalTemperatureArray {
    return [parameters objectForKey:NAMES_externalTemperatureArray];
}

- (NSNumber *)externalTemperature {
    return [parameters objectForKey:NAMES_externalTemperature];
}

- (void)setPrndl:(NSNumber *)prndl {
    if (prndl != nil) {
        [parameters setObject:prndl forKey:NAMES_prndl];
    } else {
        [parameters removeObjectForKey:NAMES_prndl];
    }
}

- (NSNumber *)prndl {
    return [parameters objectForKey:NAMES_prndl];
}

- (void)setPrndlArray:(NSNumber *)prndlArray {
    if (prndlArray != nil) {
        [parameters setObject:prndlArray forKey:NAMES_prndlArray];
    } else {
        [parameters removeObjectForKey:NAMES_prndlArray];
    }
}

- (NSNumber *)prndlArray {
    return [parameters objectForKey:NAMES_prndlArray];
}

- (void)setTirePressure:(NSNumber *)tirePressure {
    if (tirePressure != nil) {
        [parameters setObject:tirePressure forKey:NAMES_tirePressure];
    } else {
        [parameters removeObjectForKey:NAMES_tirePressure];
    }
}

- (NSNumber *)tirePressure {
    return [parameters objectForKey:NAMES_tirePressure];
}

- (void)setTirePressureArray:(NSNumber *)tirePressureArray {
    if (tirePressureArray != nil) {
        [parameters setObject:tirePressureArray forKey:NAMES_tirePressureArray];
    } else {
        [parameters removeObjectForKey:NAMES_tirePressureArray];
    }
}

- (NSNumber *)tirePressureArray {
    return [parameters objectForKey:NAMES_tirePressureArray];
}

- (void)setOdometer:(NSNumber *)odometer {
    if (odometer != nil) {
        [parameters setObject:odometer forKey:NAMES_odometer];
    } else {
        [parameters removeObjectForKey:NAMES_odometer];
    }
}

- (NSNumber *)odometer {
    return [parameters objectForKey:NAMES_odometer];
}

- (void)setBeltStatus:(NSNumber *)beltStatus {
    if (beltStatus != nil) {
        [parameters setObject:beltStatus forKey:NAMES_beltStatus];
    } else {
        [parameters removeObjectForKey:NAMES_beltStatus];
    }
}

- (NSNumber *)beltStatus {
    return [parameters objectForKey:NAMES_beltStatus];
}

- (void)setBodyInformation:(NSNumber *)bodyInformation {
    if (bodyInformation != nil) {
        [parameters setObject:bodyInformation forKey:NAMES_bodyInformation];
    } else {
        [parameters removeObjectForKey:NAMES_bodyInformation];
    }
}

- (NSNumber *)bodyInformation {
    return [parameters objectForKey:NAMES_bodyInformation];
}

- (void)setDeviceStatus:(NSNumber *)deviceStatus {
    if (deviceStatus != nil) {
        [parameters setObject:deviceStatus forKey:NAMES_deviceStatus];
    } else {
        [parameters removeObjectForKey:NAMES_deviceStatus];
    }
}

- (NSNumber *)deviceStatus {
    return [parameters objectForKey:NAMES_deviceStatus];
}

- (void)setDriverBraking:(NSNumber *)driverBraking {
    if (driverBraking != nil) {
        [parameters setObject:driverBraking forKey:NAMES_driverBraking];
    } else {
        [parameters removeObjectForKey:NAMES_driverBraking];
    }
}

- (NSNumber *)driverBraking {
    return [parameters objectForKey:NAMES_driverBraking];
}

- (void)setDriverBrakingArray:(NSNumber *)driverBrakingArray {
    if (driverBrakingArray != nil) {
        [parameters setObject:driverBrakingArray forKey:NAMES_driverBrakingArray];
    } else {
        [parameters removeObjectForKey:NAMES_driverBrakingArray];
    }
}

- (NSNumber *)driverBrakingArray {
    return [parameters objectForKey:NAMES_driverBrakingArray];
}

- (void)setWiperStatus:(NSNumber *)wiperStatus {
    if (wiperStatus != nil) {
        [parameters setObject:wiperStatus forKey:NAMES_wiperStatus];
    } else {
        [parameters removeObjectForKey:NAMES_wiperStatus];
    }
}

- (NSNumber *)wiperStatus {
    return [parameters objectForKey:NAMES_wiperStatus];
}

- (void)setHeadLampStatus:(NSNumber *)headLampStatus {
    if (headLampStatus != nil) {
        [parameters setObject:headLampStatus forKey:NAMES_headLampStatus];
    } else {
        [parameters removeObjectForKey:NAMES_headLampStatus];
    }
}

- (NSNumber *)headLampStatus {
    return [parameters objectForKey:NAMES_headLampStatus];
}

- (void)setEngineTorque:(NSNumber *)engineTorque {
    if (engineTorque != nil) {
        [parameters setObject:engineTorque forKey:NAMES_engineTorque];
    } else {
        [parameters removeObjectForKey:NAMES_engineTorque];
    }
}

- (NSNumber *)engineTorque {
    return [parameters objectForKey:NAMES_engineTorque];
}

- (void)setEngineTorqueArray:(NSNumber *)engineTorqueArray {
    if (engineTorqueArray != nil) {
        [parameters setObject:engineTorqueArray forKey:NAMES_engineTorqueArray];
    } else {
        [parameters removeObjectForKey:NAMES_engineTorqueArray];
    }
}

- (NSNumber *)engineTorqueArray {
    return [parameters objectForKey:NAMES_engineTorqueArray];
}

- (void)setAccPedalPosition:(NSNumber *)accPedalPosition {
    if (accPedalPosition != nil) {
        [parameters setObject:accPedalPosition forKey:NAMES_accPedalPosition];
    } else {
        [parameters removeObjectForKey:NAMES_accPedalPosition];
    }
}

- (NSNumber *)accPedalPosition {
    return [parameters objectForKey:NAMES_accPedalPosition];
}

- (void)setAccPedalPositionArray:(NSNumber *)accPedalPositionArray {
    if (accPedalPositionArray != nil) {
        [parameters setObject:accPedalPositionArray forKey:NAMES_accPedalPositionArray];
    } else {
        [parameters removeObjectForKey:NAMES_accPedalPositionArray];
    }
}

- (NSNumber *)accPedalPositionArray {
    return [parameters objectForKey:NAMES_accPedalPositionArray];
}

- (void)setSteeringWheelAngle:(NSNumber *)steeringWheelAngle {
    if (steeringWheelAngle != nil) {
        [parameters setObject:steeringWheelAngle forKey:NAMES_steeringWheelAngle];
    } else {
        [parameters removeObjectForKey:NAMES_steeringWheelAngle];
    }
}

- (NSNumber *)steeringWheelAngle {
    return [parameters objectForKey:NAMES_steeringWheelAngle];
}

- (void)setSteeringWheelAngleArray:(NSNumber *)steeringWheelAngleArray {
    if (steeringWheelAngleArray != nil) {
        [parameters setObject:steeringWheelAngleArray forKey:NAMES_steeringWheelAngleArray];
    } else {
        [parameters removeObjectForKey:NAMES_steeringWheelAngleArray];
    }
}

- (NSNumber *)steeringWheelAngleArray {
    return [parameters objectForKey:NAMES_steeringWheelAngleArray];
}

- (void)setAccelerometerArray:(NSNumber *)accelerometerArray {
    if (accelerometerArray != nil) {
        [parameters setObject:accelerometerArray forKey:NAMES_accelerometerArray];
    } else {
        [parameters removeObjectForKey:NAMES_accelerometerArray];
    }
}

- (NSNumber *)accelerometerArray {
    return [parameters objectForKey:NAMES_accelerometerArray];
    
}

- (void)setGyroscopeArray:(NSNumber *)gyroscopeArray {
    if (gyroscopeArray != nil) {
        [parameters setObject:gyroscopeArray forKey:NAMES_gyroscopeArray];
    } else {
        [parameters removeObjectForKey:NAMES_gyroscopeArray];
    }
    
}

- (NSNumber *)gyroscopeArray {
    return [parameters objectForKey:NAMES_gyroscopeArray];
    
}

- (void)setWheelSpeedsArray:(NSNumber *)wheelSpeedsArray {
    if (wheelSpeedsArray != nil) {
        [parameters setObject:wheelSpeedsArray forKey:NAMES_wheelSpeedsArray];
    } else {
        [parameters removeObjectForKey:NAMES_wheelSpeedsArray];
    }
}

- (NSNumber *)wheelSpeedsArray {
    return [parameters objectForKey:NAMES_wheelSpeedsArray];
    
}

- (void)setECallInfo:(NSNumber *)eCallInfo {
    if (eCallInfo != nil) {
        [parameters setObject:eCallInfo forKey:NAMES_eCallInfo];
    } else {
        [parameters removeObjectForKey:NAMES_eCallInfo];
    }
}

- (NSNumber *)eCallInfo {
    return [parameters objectForKey:NAMES_eCallInfo];
}

- (void)setAirbagStatus:(NSNumber *)airbagStatus {
    if (airbagStatus != nil) {
        [parameters setObject:airbagStatus forKey:NAMES_airbagStatus];
    } else {
        [parameters removeObjectForKey:NAMES_airbagStatus];
    }
}

- (NSNumber *)airbagStatus {
    return [parameters objectForKey:NAMES_airbagStatus];
}

- (void)setEmergencyEvent:(NSNumber *)emergencyEvent {
    if (emergencyEvent != nil) {
        [parameters setObject:emergencyEvent forKey:NAMES_emergencyEvent];
    } else {
        [parameters removeObjectForKey:NAMES_emergencyEvent];
    }
}

- (NSNumber *)emergencyEvent {
    return [parameters objectForKey:NAMES_emergencyEvent];
}

- (void)setClusterModeStatus:(NSNumber *)clusterModeStatus {
    if (clusterModeStatus != nil) {
        [parameters setObject:clusterModeStatus forKey:NAMES_clusterModeStatus];
    } else {
        [parameters removeObjectForKey:NAMES_clusterModeStatus];
    }
}

- (NSNumber *)clusterModeStatus {
    return [parameters objectForKey:NAMES_clusterModeStatus];
}

- (void)setMyKey:(NSNumber *)myKey {
    if (myKey != nil) {
        [parameters setObject:myKey forKey:NAMES_myKey];
    } else {
        [parameters removeObjectForKey:NAMES_myKey];
    }
}

- (NSNumber *)myKey {
    return [parameters objectForKey:NAMES_myKey];
}

@end
