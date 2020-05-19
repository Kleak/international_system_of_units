/// num is in kilogram
extension ISMass on num {
  num get toTonnes => this / 1000;
  num get toMilligram => this * 1e+6;
  num get toMicrogram => this * 1e+9;
  num get toGram => this * 1000;

  num get toImperialTon => this * 0.000984207;
  num get toUSTon => this * 0.00110231;
  num get toStone => this * 0.157473;
  num get toPound => this * 2.20462;
  num get toOunce => this * 35.274;

  //  convert the num to kilogram base on its mass unit
  num toKilogram(MassUnit from) {
    switch (from) {
      case MassUnit.tonnes:
        return this * 1000;
      case MassUnit.gram:
        return this / 1000;
      case MassUnit.milligram:
        return this / 1e+6;
      case MassUnit.microgram:
        return this / 1e+9;
      case MassUnit.imperialTon:
        return this * 1016.05;
      case MassUnit.usTon:
        return this * 907.185;
      case MassUnit.stone:
        return this * 6.35029;
      case MassUnit.pound:
        return this * 0.453592;
      case MassUnit.ounce:
        return this * 0.0283495;
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
