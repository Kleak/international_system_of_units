/// num is in liters
extension ISVolume on num {
  /// convert liters to us liquid gallons
  num get toUSLiquidGallon => this * 0.264172;

  /// convert liters to us liquid quarts
  num get toUSLiquidQuart => this * 1.05669;

  /// convert liters to us liquid pints
  num get toUSLiquidPint => this * 2.11338;

  /// convert liters to us legal cups
  num get toUSLegalCup => this * 4.16667;

  /// convert liters to us fluid ounces
  num get toUSFluidOunces => this * 33.814;

  /// convert liters to us tablespoon
  num get toUSTablespoon => this * 67.628;

  /// convert liters to us teaspoon
  num get toUSTeaspoon => this * 202.884;

  /// convert liters to milliliters
  num get toMilliliters => this * 1000;

  /// convert liters to imperial gallons
  num get toImperialGallon => this * 0.219969;

  /// convert liters to imperial quarts
  num get toImperialQuart => this * 0.879877;

  /// convert liters to imperial pints
  num get toImperialPint => this * 1.75975;

  /// convert liters to imperial cups
  num get toImperialCup => this * 3.51951;

  /// convert liters to imperial fluid ounces
  num get toImperialFluidOunces => this * 35.1951;

  /// convert liters to imperial tablespoon
  num get toImperialTablespoon => this * 56.3121;

  /// convert liters to imperial teaspoon
  num get toImperialTeaspoon => this * 168.936;

  /// convert liters to cubic meters
  num get toCubicMeters => this * 0.001;

  /// convert liters to cubic foot
  num get toCubicFoot => this * 0.0353147;

  /// convert liters to cubic inch
  num get toCubicInch => this * 61.0237;

  /// convert num from [unit] to liters
  num toLiter(VolumeUnit unit) {
    switch (unit) {
      case VolumeUnit.usLiquidGallon:
        return this * 3.78541;
      case VolumeUnit.usLiquidQuart:
        return this * 0.946353;
      case VolumeUnit.usLiquidPint:
        return this * 0.473176;
      case VolumeUnit.usLegalCup:
        return this * 0.24;
      case VolumeUnit.usFluidOunces:
        return this * 0.0295735;
      case VolumeUnit.usTablespoon:
        return this * 0.0147868;
      case VolumeUnit.usTeaspoon:
        return this * 0.00492892;
      case VolumeUnit.milliliters:
        return this * 0.001;
      case VolumeUnit.litres:
        return this;
      case VolumeUnit.imperialGallons:
        return this * 4.54609;
      case VolumeUnit.imperialQuart:
        return this * 1.13652;
      case VolumeUnit.imperialPint:
        return this * 0.568261;
      case VolumeUnit.imperialCup:
        return this * 0.284131;
      case VolumeUnit.imperialFluidOunces:
        return this * 0.0284131;
      case VolumeUnit.imperialTablespoon:
        return this * 0.0177582;
      case VolumeUnit.imperialTeaspoon:
        return this * 0.00591939;
      case VolumeUnit.cubicMetres:
        return this * 1000;
      case VolumeUnit.cubicFoot:
        return this * 28.3168;
      case VolumeUnit.cubicInch:
        return this * 0.0163871;
      default:
        return this;
    }
  }
}

/// represent all the supported unit for [ISVolume]
enum VolumeUnit {
  usLiquidGallon,
  usLiquidQuart,
  usLiquidPint,
  usLegalCup,
  usFluidOunces,
  usTablespoon,
  usTeaspoon,
  milliliters,
  litres,
  imperialGallons,
  imperialQuart,
  imperialPint,
  imperialCup,
  imperialFluidOunces,
  imperialTablespoon,
  imperialTeaspoon,
  cubicMetres,
  cubicFoot,
  cubicInch,
}
