///  num is in square meters
extension ISArea on num {
  /// convert square meters to square centimeters
  num get toSquareCentimeters => this * 10000;

  /// convert square meters to square kilometers
  num get toSquareKilometers => this / 1e+6;

  /// convert square meters to square miles
  num get toSquareMiles => this / 2.59e+6;

  /// convert square meters to square yard
  num get toSquareYard => this * 1.19599;

  /// convert square meters to square foot
  num get toSquareFoot => this * 10.7639;

  /// convert square meters to square inches
  num get toSquareInches => this * 1550;

  /// convert square meters to hectare
  num get toHectare => this / 10000;

  /// convert square meters to acre
  num get toAcre => this * 0.000247105;

  /// convert num from [unit] to square meters
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

/// represent all the supported unit for [ISArea]
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
