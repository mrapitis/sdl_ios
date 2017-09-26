//  SDLVehicleDataType.h
//


#import "SDLEnum.h"

/**
 * Defines the vehicle data types that can be published and/or subscribed to using SDLSubscribeVehicleData
 */
@interface SDLVehicleDataType : SDLEnum {
}

/**
 * Convert String to SDLVehicleDataType
 *
 * @param value String value to retrieve the object for
 *
 * @return SDLVehicleDataType
 */
+ (SDLVehicleDataType *)valueOf:(NSString *)value;

/**
 * @abstract Store the enumeration of all possible SDLVehicleDataType
 *
 * @return an array that store all possible SDLVehicleDataType
 */
+ (NSArray *)values;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_GPS*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_GPS;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_GPS_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_GPS_ARRAY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_GPS_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_GPS_DR_ARRAY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_SPEED*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_SPEED;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_SPEED_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_SPEED_ARRAY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_RPM*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_RPM;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_RPM_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_RPM_ARRAY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_FUELLEVEL*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_FUELLEVEL;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_FUELLEVEL_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_FUELLEVEL_ARRAY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_FUELLEVEL_STATE*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_FUELLEVEL_STATE;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_FUELLEVEL_STATE_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_FUELLEVEL_STATE_ARRAY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_FUELCONSUMPTION*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_FUELCONSUMPTION;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_EXTERNTEMP*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_EXTERNTEMP;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_EXTERNTEMP_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_EXTERNTEMP_ARRAY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_VIN*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_VIN;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_PRNDL*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_PRNDL;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_PRNDL_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_PRNDL_ARRAY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_TIREPRESSURE*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_TIREPRESSURE;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_TIREPRESSURE_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_TIREPRESSURE_ARRAY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_ODOMETER*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_ODOMETER;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_BELTSTATUS*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_BELTSTATUS;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_BODYINFO*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_BODYINFO;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_DEVICESTATUS*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_DEVICESTATUS;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_ECALLINFO*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_ECALLINFO;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_AIRBAGSTATUS*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_AIRBAGSTATUS;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_EMERGENCYEVENT*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_EMERGENCYEVENT;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_CLUSTERMODESTATUS*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_CLUSTERMODESTATUS;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_MYKEY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_MYKEY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_BRAKING*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_BRAKING;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_WIPERSTATUS*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_WIPERSTATUS;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_HEADLAMPSTATUS*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_HEADLAMPSTATUS;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_BATTVOLTAGE*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_BATTVOLTAGE;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_ENGINETORQUE*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_ENGINETORQUE;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_ENGINETORQUE_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_ENGINETORQUE_ARRAY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_ACCPEDAL*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_ACCPEDAL;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_ACCPEDAL_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_ACCPEDAL_ARRAY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_STEERINGWHEEL*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_STEERINGWHEEL;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_STEERINGWHEELANGLE_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_STEERINGWHEELANGLE_ARRAY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_FUELREMAININGRANGE_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_FUELREMAININGRANGE_ARRAY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_BRAKEPEDALPOSITION_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_BRAKEPEDALPOSITION_ARRAY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_ACCELEROMETER_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_ACCELEROMETER_ARRAY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_GYROSCOPE_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_GYROSCOPE_ARRAY;

/**
 * @abstract SDLVehicleDataType: *VEHICLEDATA_WHEELSPEEDS_ARRAY*
 */
+ (SDLVehicleDataType *)VEHICLEDATA_WHEELSPEEDS_ARRAY;

@end
