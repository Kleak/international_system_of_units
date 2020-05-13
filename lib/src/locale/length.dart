import 'package:international_system_of_units/src/length/international_system.dart';
import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:intl/intl.dart';

class LocaleLength extends LocaleBase<LengthUnit> {
  final String _localeName;

  LocaleLength(NumberFormat _numberFormat, this._localeName)
      : super(_numberFormat);

  @override
  String localeUnit(final num value, UnitSystem unitSystem, LengthUnit unit) {
    switch (unit) {
      case LengthUnit.kilometre:
        return 'km';
      case LengthUnit.metre:
        return localeMeter(value);
      case LengthUnit.mile:
        return localeMile(value);
      case LengthUnit.inch:
        return localeInch(value);
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
  }

  @override
  num localeNumber(
    num lengthInMetre,
    UnitSystem unitSystem, {
    LengthUnit toInternationalUnit,
    LengthUnit toImperialUnit,
    LengthUnit toUsUnit,
  }) {
    num distance;
    switch (unitSystem) {
      case UnitSystem.imperial:
      case UnitSystem.us:
        if (toImperialUnit == LengthUnit.mile) {
          distance = lengthInMetre.toMile;
        } else if (toImperialUnit == LengthUnit.inch) {
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

  @override
  String locale(
    num value,
    UnitSystem unitSystem, {
    bool withUnit = true,
    NumberFormat customNumberFormat,
    LengthUnit toInternationalUnit = LengthUnit.kilometre,
    LengthUnit toImperialUnit = LengthUnit.mile,
    LengthUnit toUsUnit = LengthUnit.mile,
  }) =>
      super.locale(
        value,
        unitSystem,
        withUnit: withUnit,
        toUsUnit: toUsUnit,
        customNumberFormat: customNumberFormat,
        toImperialUnit: toImperialUnit,
        toInternationalUnit: toInternationalUnit,
      );

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

  String localeMeter(num length) => Intl.plural(
        length,
        name: 'localeMeter',
        zero: 'meter',
        one: 'meter',
        other: 'meters',
        args: [length],
        locale: _localeName,
      );
}
