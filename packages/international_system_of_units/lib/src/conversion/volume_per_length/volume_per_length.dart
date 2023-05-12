import 'package:international_system_of_units/international_system_of_units.dart';

/// num is in liters per meters
extension ISVolumePerLength on num {
  /// convert liters per meters to liter per kilometers
  num get toLiterPerKilometer => toMeter(LengthUnit.kilometer);

  /// convert liters per meters to us gallons per miles
  num get toUsGallonPerMile => toUSLiquidGallon.toMeter(LengthUnit.mile);

  /// convert liters per meters to imperial gallons per miles
  num get toImperialGallonPerMile => toImperialGallon.toMeter(LengthUnit.mile);

  /// convert liters per meters to liters per 100 kilometers
  num get toLiterPer100Kilometer => toMeter(LengthUnit.kilometer) * 100;

  /// convert liters per meters to meters per liters
  num get inverseVolumePerLength => 1 / this;

  /// convert num from [unit] to liters per meters
  num toLiterPerMeter(VolumePerLengthUnit unit) {
    switch (unit) {
      case VolumePerLengthUnit.usGallonPerMile:
        return toLiter(VolumeUnit.usLiquidGallon).toMile;
      case VolumePerLengthUnit.imperialGallonPerMile:
        return toLiter(VolumeUnit.imperialGallons).toMile;
      case VolumePerLengthUnit.literPer100Kilometer:
        return (this / 100).toKilometer;
      case VolumePerLengthUnit.literPerKilometer:
        return toKilometer;
      default:
        return this;
    }
  }
}

/// represent all the supported unit for [ISVolumePerLength]
enum VolumePerLengthUnit {
  literPerMeter,
  literPerKilometer,
  literPer100Kilometer,
  usGallonPerMile,
  imperialGallonPerMile,
}
