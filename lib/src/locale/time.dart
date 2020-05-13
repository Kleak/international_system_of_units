import 'package:international_system_of_units/src/conversion/time/international_system.dart';
import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:intl/intl.dart';

class LocaleTime extends LocaleBase<TimeUnit> {
  final String _localeName;

  LocaleTime(NumberFormat _numberFormat, this._localeName)
      : super(_numberFormat);

  @override
  num localeNumberBase(num value, TimeUnit unit) {
    switch (unit) {
      case TimeUnit.calendarYear:
        return value.toCalendarYear;
      case TimeUnit.century:
        return value.toCentury;
      case TimeUnit.day:
        return value.toDay;
      case TimeUnit.decade:
        return value.toDecade;
      case TimeUnit.hour:
        return value.toHour;
      case TimeUnit.microsecond:
        return value.toMicrosecond;
      case TimeUnit.millisecond:
        return value.toMillisecond;
      case TimeUnit.minute:
        return value.toMinute;
      case TimeUnit.month:
        return value.toMonth;
      case TimeUnit.nanosecond:
        return value.toNanosecond;
      case TimeUnit.second:
        return value;
      case TimeUnit.week:
        return value.toWeek;
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
  }

  @override
  String localeUnit(num value, UnitSystem unitSystem, TimeUnit unit,
      {bool shortUnit = true}) {
    switch (unit) {
      case TimeUnit.hour:
        return shortUnit ? 'h' : localeHour(value);
      case TimeUnit.day:
        return shortUnit ? 'd' : localeDay(value);
      case TimeUnit.second:
        return shortUnit ? 's' : localeSecond(value);
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
    TimeUnit toInternationalUnit = TimeUnit.hour,
    TimeUnit toImperialUnit = TimeUnit.hour,
    TimeUnit toUsUnit = TimeUnit.hour,
  }) =>
      super.locale(
        value,
        unitSystem,
        withUnit: withUnit,
        shortUnit: shortUnit,
        toUsUnit: toUsUnit,
        customNumberFormat: customNumberFormat,
        toImperialUnit: toImperialUnit,
        toInternationalUnit: toInternationalUnit,
      );

  String localeSecond(num time) => Intl.plural(
        time,
        name: 'localeSecond',
        zero: 'seconds',
        one: 'second',
        other: 'seconds',
        args: [time],
        locale: _localeName,
      );

  String localeHour(num time) => Intl.plural(
        time,
        name: 'localeHour',
        zero: 'hours',
        one: 'hour',
        other: 'hours',
        args: [time],
        locale: _localeName,
      );

  String localeDay(num time) => Intl.plural(
        time,
        name: 'localeDay',
        zero: 'days',
        one: 'day',
        other: 'days',
        args: [time],
        locale: _localeName,
      );
}
