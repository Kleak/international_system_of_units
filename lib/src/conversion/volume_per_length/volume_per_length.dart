import 'package:international_system_of_units/international_system_of_units.dart';
import 'package:international_system_of_units/src/conversion/length/international_system.dart';
import 'package:international_system_of_units/src/conversion/volume/international_system.dart';

extension ISVolumePerLength on num {
  num get toLiterPerKilometer => toKilometer;
  num get toUsGallonPerMile => toUSLiquidGallon.toMeter(LengthUnit.mile);
  num get toImperialGallonPerMile => toImperialGallon.toMeter(LengthUnit.mile);
  num get toLiterPer100Kilometer => toMeter(LengthUnit.kilometer) * 100;

  num get inverseVolumePerLength => 1 / this;

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

enum VolumePerLengthUnit {
  literPerMeter,
  literPerKilometer,
  literPer100Kilometer,
  usGallonPerMile,
  imperialGallonPerMile,
}
