import 'package:international_system_of_units/src/conversion/volume/international_system.dart';
import 'package:international_system_of_units/src/conversion/length/international_system.dart';

extension ISLengthPerVolume on num {
  num get toKilometerPerLiter => toKilometer;
  num get toMilePerUsGallon => toMile.toLiter(VolumeUnit.usLiquidGallon);
  num get toMilePerImperialGallon => toMile.toLiter(VolumeUnit.imperialGallons);

  num get inverseLengthPerVolume => 1 / this;

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

enum LengthPerVolumeUnit {
  meterPerLiter,
  kilometerPerLiter,
  milePerUsGallon,
  milePerImperialGallon,
}
