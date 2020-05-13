/// num is in litre
extension ISVolume on num {
  num get toUSLiquidGallon => this * 0.264172;
  num get toUSLiquidQuart => this * 1.05669;
  num get toUSLiquidPint => this * 2.11338;
  num get toUSLegalCup => this * 4.16667;
  num get toUSFluidOunces => this * 33.814;
  num get toUSTablespoon => this * 67.628;
  num get toUSTeaspoon => this * 202.884;

  num get toMillilitres => this * 1000;

  num get toImperialGallon => this * 0.219969;
  num get toImperialQuart => this * 0.879877;
  num get toImperialPint => this * 1.75975;
  num get toImperialCup => this * 3.51951;
  num get toImpetialFluidOunces => this * 35.1951;
  num get toImperialTablespoon => this * 56.3121;
  num get toImperialTeaspoon => this * 168.936;

  num get toCubicMetres => this * 0.001;
  num get toCubicFoot => this * 0.0353147;
  num get toCubicInch => this * 61.0237;

  //  convert the num to litre base on its volume unit
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
      case VolumeUnit.millilitres:
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

enum VolumeUnit {
  usLiquidGallon,
  usLiquidQuart,
  usLiquidPint,
  usLegalCup,
  usFluidOunces,
  usTablespoon,
  usTeaspoon,
  millilitres,
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
