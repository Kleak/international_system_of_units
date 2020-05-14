/// num is in kelvin
extension ISTemperature on num {
  num get toCelsius => this - 273.15;
  num get toFahrenheit => toCelsius * 9 / 5 + 32;
  num get toRankine => this * 1.8;
  num get toRomer => toCelsius * 21 / 40 + 7.5;

  num toKelvin(TemperatureUnit unit) {
    switch (unit) {
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
}
