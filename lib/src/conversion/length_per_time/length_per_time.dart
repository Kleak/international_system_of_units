import 'package:international_system_of_units/src/conversion/time/international_system.dart';
import 'package:international_system_of_units/src/conversion/length/international_system.dart';

extension ISLengthPerTime on num {
  num get toKnot => this / 0.514444;
  num get toKilometerPerHour => toKilometer.toSecond(TimeUnit.hour);
  num get toMilePerHour => toMile.toSecond(TimeUnit.hour);

  num toMeterPerSecond(LengthPerTimeUnit unit) {
    switch (unit) {
      case LengthPerTimeUnit.milePerHour:
        return toMeter(LengthUnit.mile).toHour;
      case LengthPerTimeUnit.kilometerPerHour:
        return toMeter(LengthUnit.kilometer).toHour;
      case LengthPerTimeUnit.knot:
        return this * 0.514444;
      default:
        return this;
    }
  }
}

enum LengthPerTimeUnit {
  meterPerSecond,
  kilometerPerHour,
  milePerHour,
  knot,
}
