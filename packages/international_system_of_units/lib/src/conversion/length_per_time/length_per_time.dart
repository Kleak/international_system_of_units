import 'package:international_system_of_units/src/conversion/time/international_system.dart';
import 'package:international_system_of_units/src/conversion/length/international_system.dart';

/// num is meters per seconds
extension ISLengthPerTime on num {
  /// convert meters per seconds to knot
  num get toKnot => this / 0.514444;

  /// convert meters per seconds to kilometers per hours
  num get toKilometerPerHour => toKilometer.toSecond(TimeUnit.hour);

  /// convert meter per seconds to miles per hours
  num get toMilePerHour => toMile.toSecond(TimeUnit.hour);

  /// convert num from [unit] to meters per seconds
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

/// represent all the supported unit for [ISLengthPerTime]
enum LengthPerTimeUnit {
  meterPerSecond,
  kilometerPerHour,
  milePerHour,
  knot,
}
