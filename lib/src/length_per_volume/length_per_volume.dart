import 'package:international_system_of_units/src/length/international_system.dart';
import 'package:international_system_of_units/src/volume/international_system.dart';

extension ISLengthPerVolume on num {
  num get toKilometerPerLiter => toKilometre;
  num get toMilePerUsGallon => toMile.toLiter(VolumeUnit.usLiquidGallon);
  num get toMilePerImperialGallon => toMile.toLiter(VolumeUnit.imperialGallons);

  num toMeterPerLiter(LengtPerVolumehUnit unit) {
    switch (unit) {
      default:
        return this;
    }
  }
}

enum LengtPerVolumehUnit {
  meterPerLiter,
  kilometerPerLiter,
  milePerUsGallon,
  milePerImperialGallon,
}
