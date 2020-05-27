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
      case TimeUnit.century:
        return value.toCentury;
      case TimeUnit.decade:
        return value.toDecade;
      case TimeUnit.calendarYear:
        return value.toCalendarYear;
      case TimeUnit.month:
        return value.toMonth;
      case TimeUnit.week:
        return value.toWeek;
      case TimeUnit.day:
        return value.toDay;
      case TimeUnit.hour:
        return value.toHour;
      case TimeUnit.minute:
        return value.toMinute;
      case TimeUnit.second:
        return value;
      case TimeUnit.millisecond:
        return value.toMillisecond;
      case TimeUnit.microsecond:
        return value.toMicrosecond;
      case TimeUnit.nanosecond:
        return value.toNanosecond;
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
  }

  @override
  String localeUnit(num value, UnitSystem unitSystem, TimeUnit unit,
      {bool shortUnit = true}) {
    switch (unit) {
      case TimeUnit.century:
        return shortUnit ? 'cent.' : localeCentury(value);
      case TimeUnit.decade:
        return localeDecade(value);
      case TimeUnit.calendarYear:
        return shortUnit ? 'y' : localeYear(value);
      case TimeUnit.month:
        return shortUnit ? localeMonthAbbreviation(value) : localeMonth(value);
      case TimeUnit.week:
        return shortUnit ? 'wk' : localeWeek(value);
      case TimeUnit.day:
        return shortUnit ? 'd' : localeDay(value);
      case TimeUnit.hour:
        return shortUnit ? 'h' : localeHour(value);
      case TimeUnit.minute:
        return shortUnit ? 'm' : localeMinute(value);
      case TimeUnit.second:
        return shortUnit ? 's' : localeSecond(value);
      case TimeUnit.millisecond:
        return shortUnit ? 'ms' : localeMillisecond(value);
      case TimeUnit.microsecond:
        return shortUnit ? 'µs' : localeMicrosecond(value);
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
    TimeUnit toEuUnit = TimeUnit.hour,
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

  String localeCentury(num time) => Intl.plural(
        time,
        name: 'localeCentury',
        zero: 'centuries',
        one: 'century',
        other: 'centuries',
        args: [time],
        locale: _localeName,
      );

  String localeDecade(num time) => Intl.plural(
        time,
        name: 'localeDecade',
        zero: 'decades',
        one: 'decade',
        other: 'decades',
        args: [time],
        locale: _localeName,
      );

  String localeYear(num time) => Intl.plural(
        time,
        name: 'localeYear',
        zero: 'year',
        one: 'year',
        other: 'years',
        args: [time],
        locale: _localeName,
      );

  String localeMonth(num time) => Intl.plural(
        time,
        name: 'localeMonth',
        zero: 'month',
        one: 'month',
        other: 'months',
        args: [time],
        locale: _localeName,
      );

  String localeMonthAbbreviation(num time) => Intl.plural(
        time,
        name: 'localeMonthAbbreviation',
        zero: 'mo',
        one: 'mo',
        other: 'mos',
        args: [time],
        locale: _localeName,
      );

  String localeWeek(num time) => Intl.plural(
        time,
        name: 'localeWeek',
        zero: 'week',
        one: 'week',
        other: 'weeks',
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

  String localeHour(num time) => Intl.plural(
        time,
        name: 'localeHour',
        zero: 'hours',
        one: 'hour',
        other: 'hours',
        args: [time],
        locale: _localeName,
      );

  String localeMinute(num time) => Intl.plural(
        time,
        name: 'localeMinute',
        zero: 'minute',
        one: 'minute',
        other: 'minutes',
        args: [time],
        locale: _localeName,
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

  String localeMillisecond(num time) => Intl.plural(
        time,
        name: 'localeMillisecond',
        zero: 'millisecond',
        one: 'millisecond',
        other: 'milliseconds',
        args: [time],
        locale: _localeName,
      );

  String localeMicrosecond(num time) => Intl.plural(
        time,
        name: 'localeMicrosecond',
        zero: 'microsecond',
        one: 'microsecond',
        other: 'microseconds',
        args: [time],
        locale: _localeName,
      );
}
