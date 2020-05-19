/// num is in pascal
extension ISPressure on num {
  num get toPoundForcePerSquareInch => this / 6895;
  num get toBar => this / 100000;

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

enum PressureUnit {
  pascal,
  bar,
  poundForcePerSquareInch,
}
