/// num is in meters
extension ISLength on num {
  /// convert meters to nanometers
  num get toNanometer => this * 1000000000;

  /// convert meters to micrometers
  num get toMicrometer => this * 1000000;

  /// convert meters to millimeters
  num get toMillimeter => this * 1000;

  /// convert meters to centimeters
  num get toCentimeter => this * 100;

  /// convert meters to kilometers
  num get toKilometer => this * 0.001;

  /// convert meters to inches
  num get toInch => this * 39.3701;

  /// convert meters to foot
  num get toFoot => this * 3.28084;

  /// converts meters to yard
  num get toYard => this * 1.09361;

  /// convert meters to miles
  num get toMile => this * 0.000621371;

  /// convert meters to nutical miles
  num get toNauticalMile => this * 0.000539957;

  /// convert num from [unit] to meters
  num toMeter(LengthUnit unit) {
    switch (unit) {
      case LengthUnit.nanometer:
        return this / 1e+9;
      case LengthUnit.micrometer:
        return this / 1e+6;
      case LengthUnit.millimeter:
        return this / 1000;
      case LengthUnit.centimeter:
        return this / 100;
      case LengthUnit.kilometer:
        return this * 1000;
      case LengthUnit.inch:
        return this * 0.0254;
      case LengthUnit.foot:
        return this * 0.3048;
      case LengthUnit.yard:
        return this * 0.9144;
      case LengthUnit.mile:
        return this * 1609.34;
      case LengthUnit.nauticalMile:
        return this * 1852;
      default:
        return this;
    }
  }
}

/// represent all the supported unit for [ISLength]
enum LengthUnit {
  nanometer,
  micrometer,
  millimeter,
  centimeter,
  meter,
  kilometer,
  inch,
  foot,
  yard,
  mile,
  nauticalMile,
}
