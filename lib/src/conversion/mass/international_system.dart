/// num is in kilogram
extension ISMass on num {
  num get toTonnes => this * 0.000001;
  num get toMilligram => this * 1000;
  num get toMicrogram => this * 1e+6;
  num get toGram => this * 1000;

  num get toImperialTon => this * 9.8421e-7;
  num get toUSTon => this * 1.1023e-6;
  num get toStone => this * 0.000157473;
  num get toPound => this * 0.00220462;
  num get toOunce => this * 0.035274;

  num get usTon => this * 1e-6;

  //  convert the num to kilogram base on its mass unit
  num toKilogram(MassUnit from) {
    switch (from) {
      case MassUnit.tonnes:
        return this * 1e+6;
      case MassUnit.gram:
        return this / 1000;
      case MassUnit.milligram:
        return this * 0.001;
      case MassUnit.microgram:
        return this * 1e-6;
      case MassUnit.imperialTon:
        return this * 1.016e+6;
      case MassUnit.usTon:
        return this * 907185;
      case MassUnit.stone:
        return this * 6350.29;
      case MassUnit.pound:
        return this * 453.592;
      case MassUnit.ounce:
        return this * 28.3495;
      default:
        return this;
    }
  }
}

enum MassUnit {
  tonnes,
  kilogram,
  gram,
  milligram,
  microgram,
  imperialTon,
  usTon,
  stone,
  pound,
  ounce,
}
