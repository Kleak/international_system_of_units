import 'package:international_system_of_units/src/conversion/length_per_time/length_per_time.dart';
import 'package:international_system_of_units/src/locale/length.dart';
import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/locale/time.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:intl/intl.dart';

class LocaleLengthPerTime extends LocaleBase<LengthPerTimeUnit> {
  final String _localeName;
  final LocaleLength _length;
  final LocaleTime _time;

  LocaleLengthPerTime(
      NumberFormat numberFormat, this._localeName, this._length, this._time)
      : super(numberFormat);

  @override
  num localeNumberBase(num value, LengthPerTimeUnit unit) {
    switch (unit) {
      case LengthPerTimeUnit.kilometerPerHour:
        return value.toKilometerPerHour;
      case LengthPerTimeUnit.milePerHour:
        return value.toMilePerHour;
      case LengthPerTimeUnit.knot:
        return value.toKnot;
      case LengthPerTimeUnit.meterPerSecond:
        return value;
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
  }

  @override
  String localeUnit(
    num value,
    UnitSystem unitSystem,
    LengthPerTimeUnit unit, {
    bool shortUnit = true,
  }) {
    switch (unit) {
      case LengthPerTimeUnit.kilometerPerHour:
        return shortUnit ? 'km/h' : localeKilometersPerHours(value);
      case LengthPerTimeUnit.milePerHour:
        return shortUnit ? 'm/h' : localeMilesPerHours(value);
      case LengthPerTimeUnit.knot:
        return shortUnit ? 'kn' : localeKnots(value);
      case LengthPerTimeUnit.meterPerSecond:
        return shortUnit ? 'm/s' : localeMetersPerSeconds(value);
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
    LengthPerTimeUnit toInternationalUnit = LengthPerTimeUnit.meterPerSecond,
    LengthPerTimeUnit toEuUnit = LengthPerTimeUnit.kilometerPerHour,
    LengthPerTimeUnit toImperialUnit = LengthPerTimeUnit.milePerHour,
    LengthPerTimeUnit toUsUnit = LengthPerTimeUnit.milePerHour,
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

  String localeKilometersPerHours(num value) {
    final kilometers = _length.localeKilometers(value);
    final hours = _time.localeHour(2);
    return _intlLocaleKilometersPerHours(kilometers, hours);
  }

  String localeMilesPerHours(num value) {
    final miles = _length.localeMiles(value);
    final hours = _time.localeHour(2);
    return _intlLocaleMilesPerHours(miles, hours);
  }

  String localeMetersPerSeconds(num value) {
    final meters = _length.localeMeters(value);
    final seconds = _time.localeSecond(value);
    return _intLocaleMetersPerSeconds(meters, seconds);
  }

  String localeKnots(num value) => Intl.plural(
        value,
        name: 'localeKnots',
        zero: 'knots',
        one: 'knot',
        other: 'knots',
        args: [value],
        locale: _localeName,
      );

  String _intlLocaleKilometersPerHours(String kilometers, String hours) =>
      Intl.message(
        '$kilometers per $hours',
        name: '_intlLocaleKilometersPerHours',
        args: [kilometers, hours],
        locale: _localeName,
      );

  String _intlLocaleMilesPerHours(String miles, String hours) => Intl.message(
        '$miles per $hours',
        name: '_intlLocaleMilesPerHours',
        args: [miles, hours],
        locale: _localeName,
      );

  String _intLocaleMetersPerSeconds(String meters, String seconds) =>
      Intl.message(
        '$meters per $seconds',
        name: '_intLocaleMetersPerSeconds',
        args: [meters, seconds],
        locale: _localeName,
      );
}
