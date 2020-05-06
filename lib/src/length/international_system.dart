/// num is in metre
extension ISLength on num {
  num get toNanometre => this * 1000000000;
  num get toMicrometre => this * 1000000;
  num get toMillimetre => this * 1000;
  num get toCentimetre => this * 100;
  num get toKilometre => this * 0.001;

  num get toInch => this * 39.3701;
  num get toFoot => this * 3.28084;
  num get toYard => this * 1.09361;
  num get toMile => this * 0.000621371;

  num get toNauticalMile => this * 0.000539957;

  //  convert the num to metre base on its length unit
  num toMetre(LengthUnit unit) {
    switch (unit) {
      case LengthUnit.nanometre:
        return this / 1e+9;
      case LengthUnit.micrometre:
        return this / 1e+6;
      case LengthUnit.millimetre:
        return this / 1000;
      case LengthUnit.centimetre:
        return this * 100;
      case LengthUnit.kilometre:
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
  nanometre,
  micrometre,
  millimetre,
  centimetre,
  metre,
  kilometre,
  inch,
  foot,
  yard,
  mile,
  nauticalMile,
}
