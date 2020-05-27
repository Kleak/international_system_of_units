import 'package:international_system_of_units/src/conversion/temperature/international_system.dart';
import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:intl/intl.dart';

class LocaleTemperature extends LocaleBase<TemperatureUnit> {
  final String _localeName;

  LocaleTemperature(NumberFormat numberFormat, this._localeName)
      : super(numberFormat);

  @override
  num localeNumberBase(num value, TemperatureUnit unit) {
    switch (unit) {
      case TemperatureUnit.celsius:
        return value.toCelsius;
      case TemperatureUnit.fahrenheit:
        return value.toFahrenheit;
      case TemperatureUnit.kelvin:
        return value;
      case TemperatureUnit.rankine:
        return value.toRankine;
      case TemperatureUnit.romer:
        return value.toRomer;
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
  }

  @override
  String localeUnit(
    num value,
    UnitSystem unitSystem,
    TemperatureUnit unit, {
    bool shortUnit = true,
  }) {
    switch (unit) {
      case TemperatureUnit.celsius:
        return shortUnit ? '°C' : localeCelsius(value);
      case TemperatureUnit.fahrenheit:
        return shortUnit ? '°F' : localeFahrenheit(value);
      case TemperatureUnit.kelvin:
        return shortUnit ? 'K' : localeKelvin(value);
      case TemperatureUnit.rankine:
        return shortUnit ? '°R' : localeRankine(value);
      case TemperatureUnit.romer:
        return shortUnit ? '°Rø' : localeRomer(value);
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
  }

  @override
  String locale(
    num value,
    UnitSystem unitSystem, {
    bool withUnit = true,
    bool shortUnit = true,
    NumberFormat customNumberFormat,
    TemperatureUnit toInternationalUnit = TemperatureUnit.kelvin,
    TemperatureUnit toEuUnit = TemperatureUnit.celsius,
    TemperatureUnit toImperialUnit = TemperatureUnit.fahrenheit,
    TemperatureUnit toUsUnit = TemperatureUnit.fahrenheit,
  }) =>
      super.locale(
        value,
        unitSystem,
        withUnit: withUnit,
        shortUnit: shortUnit,
        customNumberFormat: customNumberFormat,
        toUsUnit: toUsUnit,
        toEuUnit: toEuUnit,
        toImperialUnit: toImperialUnit,
        toInternationalUnit: toInternationalUnit,
      );

  String localeCelsius(num value) => Intl.plural(
        value,
        name: 'localeCelsius',
        zero: 'celsius',
        one: 'celsius',
        other: 'celsius',
        args: [value],
        locale: _localeName,
      );

  String localeFahrenheit(num value) => Intl.plural(
        value,
        name: 'localeFahrenheit',
        zero: 'fahrenheit',
        one: 'fahrenheit',
        other: 'fahrenheit',
        args: [value],
        locale: _localeName,
      );

  String localeKelvin(num value) => Intl.plural(
        value,
        name: 'localeKelvin',
        zero: 'kelvin',
        one: 'kelvin',
        other: 'kelvins',
        args: [value],
        locale: _localeName,
      );

  String localeRankine(num value) => Intl.plural(
        value,
        name: 'localeRankine',
        zero: 'rankine',
        one: 'rankine',
        other: 'rankines',
        args: [value],
        locale: _localeName,
      );

  String localeRomer(num value) => Intl.plural(
        value,
        name: 'localeRomer',
        zero: 'rømer',
        one: 'rømer',
        other: 'rømer',
        args: [value],
        locale: _localeName,
      );
}
