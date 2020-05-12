import 'package:international_system_of_units/src/length/international_system.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:intl/intl.dart';

class LocaleLength {
  final NumberFormat _numberFormat;
  final String _localeName;

  LocaleLength(this._numberFormat, this._localeName);

  LengthUnit lengthUnit(UnitSystem unitSystem,
      {LengthUnit toInternationalUnit = LengthUnit.kilometre,
      LengthUnit toImperialOrUsUnit = LengthUnit.mile}) {
    switch (unitSystem) {
      case UnitSystem.imperial:
      case UnitSystem.us:
        return toImperialOrUsUnit;
      default:
        return toInternationalUnit;
    }
  }

  String localeLengthUnit(
      final num length, UnitSystem unitSystem, LengthUnit lengthUnit) {
    switch (unitSystem) {
      case UnitSystem.imperial:
      case UnitSystem.us:
        if (lengthUnit == LengthUnit.mile) {
          return localeMile(length);
        } else if (lengthUnit == LengthUnit.inch) {
          return localeInch(length);
        }
        break;
      default:
        if (lengthUnit == LengthUnit.kilometre) {
          return 'km';
        } else if (lengthUnit == LengthUnit.metre) {
          return localeMetre(length);
        }
        break;
    }
    throw UnsupportedError('We currently do not support this combinaison');
  }

  num localeLengthNumber(num lengthInMetre, UnitSystem unitSystem,
      {LengthUnit toInternationalUnit = LengthUnit.kilometre,
      LengthUnit toImperialOrUsUnit = LengthUnit.mile}) {
    num distance;
    switch (unitSystem) {
      case UnitSystem.imperial:
      case UnitSystem.us:
        if (toImperialOrUsUnit == LengthUnit.mile) {
          distance = lengthInMetre.toMile;
        } else if (toImperialOrUsUnit == LengthUnit.inch) {
          distance = lengthInMetre.toInch;
        } else {
          distance = lengthInMetre;
        }
        break;
      default:
        distance = lengthInMetre;
        if (toInternationalUnit == LengthUnit.kilometre) {
          distance = lengthInMetre.toKilometre;
        } else {
          distance = lengthInMetre;
        }
        break;
    }
    return distance;
  }

  String localeLength(num lengthInMetre, UnitSystem unitSystem,
      {bool withUnit = true,
      NumberFormat customNumberFormat,
      LengthUnit toInternationalUnit = LengthUnit.kilometre,
      LengthUnit toImperialOrUsUnit = LengthUnit.mile}) {
    final distance = localeLengthNumber(lengthInMetre, unitSystem,
        toInternationalUnit: toInternationalUnit,
        toImperialOrUsUnit: toImperialOrUsUnit);
    final _lengthUnit = lengthUnit(unitSystem,
        toInternationalUnit: toInternationalUnit,
        toImperialOrUsUnit: toImperialOrUsUnit);
    final sb =
        StringBuffer((customNumberFormat ?? _numberFormat).format(distance));
    if (withUnit) {
      sb.write(' ${localeLengthUnit(distance, unitSystem, _lengthUnit)}');
    }
    return sb.toString();
  }

  String localeMile(num length) => Intl.plural(
        length,
        name: 'localeMile',
        zero: 'miles',
        one: 'mile',
        other: 'miles',
        args: [length],
        locale: _localeName,
      );

  String localeInch(num length) => Intl.plural(
        length,
        name: 'localeInch',
        zero: 'inches',
        one: 'inche',
        other: 'inches',
        args: [length],
        locale: _localeName,
      );

  String localeMetre(num length) => Intl.plural(
        length,
        name: 'localeMetre',
        zero: 'metre',
        one: 'metre',
        other: 'metres',
        args: [length],
        locale: _localeName,
      );
}
