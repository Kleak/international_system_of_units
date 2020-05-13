import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/time/international_system.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:intl/intl.dart';

class LocaleTime extends LocaleBase<TimeUnit> {
  final String _localeName;

  LocaleTime(NumberFormat _numberFormat, this._localeName)
      : super(_numberFormat);

  @override
  num localeNumber(
    num value,
    UnitSystem unitSystem, {
    TimeUnit toInternationalUnit,
    TimeUnit toImperialUnit,
    TimeUnit toUsUnit,
  }) {
    switch (unitSystem) {
      case UnitSystem.imperial:
        return _localeNumberBase(value, toImperialUnit);
      case UnitSystem.us:
        return _localeNumberBase(value, toUsUnit);
      default:
        return _localeNumberBase(value, toInternationalUnit);
    }
  }

  num _localeNumberBase(num value, TimeUnit unit) {
    switch (unit) {
      case TimeUnit.day:
        return value.toDay;
      case TimeUnit.hour:
        return value.toHour;
      default:
        return value;
    }
  }

  @override
  String localeUnit(num value, UnitSystem unitSystem, TimeUnit unit) {
    switch (unit) {
      case TimeUnit.hour:
        return localeHour(value);
      case TimeUnit.day:
        return localeDay(value);
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
  }

  String localeHour(num time) => Intl.plural(
        time,
        name: 'localeHour',
        zero: 'hour',
        one: 'hour',
        other: 'hours',
        args: [time],
        locale: _localeName,
      );

  String localeDay(num time) => Intl.plural(
        time,
        name: 'localeDay',
        zero: 'day',
        one: 'day',
        other: 'days',
        args: [time],
        locale: _localeName,
      );
}
