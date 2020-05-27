import 'package:international_system_of_units/src/conversion/length/international_system.dart';
import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:intl/intl.dart';

class LocaleLength extends LocaleBase<LengthUnit> {
  final String _localeName;

  LocaleLength(NumberFormat _numberFormat, this._localeName)
      : super(_numberFormat);

  @override
  String localeUnit(
    final num value,
    UnitSystem unitSystem,
    LengthUnit unit, {
    bool shortUnit = true,
  }) {
    switch (unit) {
      case LengthUnit.kilometer:
        return shortUnit ? 'km' : localeKilometers(value);
      case LengthUnit.meter:
        return shortUnit ? 'm' : localeMeters(value);
      case LengthUnit.mile:
        return shortUnit ? 'mi' : localeMiles(value);
      case LengthUnit.inch:
        return shortUnit ? 'in' : localeInches(value);
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
  }

  @override
  num localeNumberBase(num value, LengthUnit unit) {
    switch (unit) {
      case LengthUnit.mile:
        return value.toMile;
      case LengthUnit.foot:
        return value.toFoot;
      case LengthUnit.inch:
        return value.toInch;
      case LengthUnit.micrometer:
        return value.toMicrometer;
      case LengthUnit.millimeter:
        return value.toMillimeter;
      case LengthUnit.nanometer:
        return value.toNanometer;
      case LengthUnit.nauticalMile:
        return value.toNauticalMile;
      case LengthUnit.yard:
        return value.toYard;
      case LengthUnit.kilometer:
        return value.toKilometer;
      case LengthUnit.centimeter:
        return value.toCentimeter;
      case LengthUnit.meter:
        return value;
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
    LengthUnit toInternationalUnit = LengthUnit.kilometer,
    LengthUnit toImperialUnit = LengthUnit.mile,
    LengthUnit toUsUnit = LengthUnit.mile,
    LengthUnit toEuUnit = LengthUnit.kilometer,
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

  String localeMiles(num length) => Intl.plural(
        length,
        name: 'localeMiles',
        zero: 'miles',
        one: 'mile',
        other: 'miles',
        args: [length],
        locale: _localeName,
      );

  String localeInches(num length) => Intl.plural(
        length,
        name: 'localeInches',
        zero: 'inches',
        one: 'inche',
        other: 'inches',
        args: [length],
        locale: _localeName,
      );

  String localeMeters(num length) => Intl.plural(
        length,
        name: 'localeMeters',
        zero: 'meters',
        one: 'meter',
        other: 'meters',
        args: [length],
        locale: _localeName,
      );

  String localeKilometers(num length) => Intl.plural(
        length,
        name: 'localeKilometers',
        zero: 'kilometers',
        one: 'kilometer',
        other: 'kilometers',
        args: [length],
        locale: _localeName,
      );
}
