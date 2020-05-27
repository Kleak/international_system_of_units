import 'package:international_system_of_units/src/conversion/volume/international_system.dart';
import 'package:international_system_of_units/src/conversion/length/international_system.dart';

/// num is in meters per liters
extension ISLengthPerVolume on num {
  /// convert meters per liters to kilometers per liters
  num get toKilometerPerLiter => toKilometer;

  /// convert meters per liters to miles per us gallons
  num get toMilePerUsGallon => toMile.toLiter(VolumeUnit.usLiquidGallon);

  /// convert meters per liters to miles per imperial gallons
  num get toMilePerImperialGallon => toMile.toLiter(VolumeUnit.imperialGallons);

  /// convert meters per liters to liters per meters
  num get inverseLengthPerVolume => 1 / this;

  /// convert num from [unit] to meters per liters
  num toMeterPerLiter(LengthPerVolumeUnit unit) {
    switch (unit) {
      case LengthPerVolumeUnit.milePerUsGallon:
        return toMeter(LengthUnit.mile).toUSLiquidGallon;
      case LengthPerVolumeUnit.milePerImperialGallon:
        return toMeter(LengthUnit.mile).toImperialGallon;
      case LengthPerVolumeUnit.kilometerPerLiter:
        return toKilometer;
      default:
        return this;
    }
  }
}

/// represent all the supported unit for [ISLengthPerVolume]
enum LengthPerVolumeUnit {
  meterPerLiter,
  kilometerPerLiter,
  milePerUsGallon,
  milePerImperialGallon,
}
