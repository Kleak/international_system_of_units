/// num is in pascal
extension ISPressure on num {
  /// convert pascals to pounds force per square inches
  num get toPoundForcePerSquareInch => this * 0.000145038;

  /// convert pascals to bars
  num get toBar => this / 100000;

  /// convert num from [unit] to pascals
  num toPascal(PressureUnit unit) {
    switch (unit) {
      case PressureUnit.poundForcePerSquareInch:
        return this * 6895;
      case PressureUnit.bar:
        return this * 100000;
      default:
        return this;
    }
  }
}

/// represent all the supported unit for [ISPressure]
enum PressureUnit {
  pascal,
  bar,
  poundForcePerSquareInch,
}
