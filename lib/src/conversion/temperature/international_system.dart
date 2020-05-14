/// num is in kelvin
extension ISTemperature on num {
  num get toCelsius => this - 273.15;
  num get toFahrenheit => toCelsius * 9 / 5 + 32;
  num get toRankine => this * 1.8;
  num get toRomer => toCelsius * 21 / 40 + 7.5;

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

enum TemperatureUnit {
  celsius,
  fahrenheit,
  rankine,
  romer,
  kelvin,
}
