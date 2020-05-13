/// num is in metre
extension ISLength on num {
  num get toNanometer => this * 1000000000;
  num get toMicrometer => this * 1000000;
  num get toMillimeter => this * 1000;
  num get toCentimeter => this * 100;
  num get toKilometer => this * 0.001;

  num get toInch => this * 39.3701;
  num get toFoot => this * 3.28084;
  num get toYard => this * 1.09361;
  num get toMile => this * 0.000621371;

  num get toNauticalMile => this * 0.000539957;

  //  convert the num to metre base on its length unit
  num toMeter(LengthUnit unit) {
    switch (unit) {
      case LengthUnit.nanometer:
        return this / 1e+9;
      case LengthUnit.micrometer:
        return this / 1e+6;
      case LengthUnit.millimeter:
        return this / 1000;
      case LengthUnit.centimeter:
        return this * 100;
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
