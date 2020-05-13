import 'package:international_system_of_units/src/conversion/time/international_system.dart';
import 'package:international_system_of_units/src/conversion/length/international_system.dart';

extension ISLengthPerTime on num {
  num toMeterPerSecond(LengthPerTimeUnit unit) {
    switch (unit) {
      case LengthPerTimeUnit.milePerHour:
        return toMeter(LengthUnit.mile).toHour;
      case LengthPerTimeUnit.kilometerPerHour:
        return toMeter(LengthUnit.kilometer).toHour;
      default:
        return this;
    }
  }
}

enum LengthPerTimeUnit {
  meterPerSecond,
  kilometerPerHour,
  milePerHour,
}
