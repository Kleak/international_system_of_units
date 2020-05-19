//  num is in m2
extension ISArea on num {
  num get toSquareCentimeters => this * 10000;
  num get toSquareKilometers => this / 1e+6;
  num get toSquareMiles => this / 2.59e+6;
  num get toSquareYard => this * 1.196;
  num get toSquareFoot => this * 10.764;
  num get toSquareInches => this * 1550;
  num get toHectare => this / 10000;
  num get toAcre => this / 4047;

  num toSquareMeters(AreaUnit unit) {
    switch (unit) {
      case AreaUnit.squareCentimeters:
        return this / 10000;
      case AreaUnit.squareKilometers:
        return this * 1e+6;
      case AreaUnit.squareMiles:
        return this * 2.59e+6;
      case AreaUnit.squareYard:
        return this / 1.196;
      case AreaUnit.squareFoot:
        return this / 10.764;
      case AreaUnit.squareInches:
        return this / 1550;
      case AreaUnit.hectare:
        return this * 10000;
      case AreaUnit.acre:
        return this * 4047;
      default:
        return this;
    }
  }
}

enum AreaUnit {
  squareCentimeters,
  squareMeters,
  squareKilometers,
  squareMiles,
  squareYard,
  squareFoot,
  squareInches,
  hectare,
  acre,
}
