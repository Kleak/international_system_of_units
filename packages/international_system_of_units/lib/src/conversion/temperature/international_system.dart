/// num is in kelvin
extension ISTemperature on num {
  /// convert kelvin to celsius
  num get toCelsius => this - 273.15;

  /// convert kelvin to fahrenheit
  num get toFahrenheit => toCelsius * 9 / 5 + 32;

  /// convert kelvin to rankine
  num get toRankine => this * 1.8;

  /// convert kelvin to romer
  num get toRomer => toCelsius * 21 / 40 + 7.5;

  /// convert num from [unit] to kelvin
  num toKelvin(TemperatureUnit unit) {
    switch (unit) {
      case TemperatureUnit.celsius:
        return this + 273.15;
      case TemperatureUnit.fahrenheit:
        return (this - 32) * 5 / 9 + 273.15;
      case TemperatureUnit.rankine:
        return this * 5 / 9;
      case TemperatureUnit.romer:
        return (this - 7.5) * 40 / 21 + 273.15;
      default:
        return this;
    }
  }
}

/// represent all the supported unit for [ISTemperature]
enum TemperatureUnit {
  celsius,
  fahrenheit,
  rankine,
  romer,
  kelvin,
}
