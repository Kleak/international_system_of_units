/// num is in kilograms
extension ISMass on num {
  /// convert kilograms to tonnes
  num get toTonnes => this / 1000;

  /// convert kilograms to milligrams
  num get toMilligram => this * 1e+6;

  /// convert kilograms to micrograms
  num get toMicrogram => this * 1e+9;

  /// convert kilograms to grams
  num get toGram => this * 1000;

  /// convert kilograms to imperial tons
  num get toImperialTon => this * 0.000984207;

  /// convert kilograms to us tons
  num get toUSTon => this * 0.00110231;

  /// convert kilograms to stones
  num get toStone => this * 0.157473;

  /// convert kilograms to pounds
  num get toPound => this * 2.20462;

  /// convert kilograms to ounces
  num get toOunce => this * 35.274;

  /// convert num from [unit] to kilograms
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

/// represent all the supported unit for [ISMass]
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
