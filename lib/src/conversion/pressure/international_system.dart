/// num is in pascal
extension ISPressure on num {
  num get toPoundForcePerSquareInch => this / 6895;

  num toPascal(PressureUnit unit) {
    switch (unit) {
      case PressureUnit.poundForcePerSquareInch:
        return this * 6895;
      default:
        return this;
    }
  }
}

enum PressureUnit {
  pascal,
  poundForcePerSquareInch,
}
