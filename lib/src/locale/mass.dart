import 'package:international_system_of_units/src/conversion/mass/international_system.dart';
import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:intl/intl.dart';

class LocaleMass extends LocaleBase<MassUnit> {
  final String _localeName;

  LocaleMass(NumberFormat _numberFormat, this._localeName)
      : super(_numberFormat);

  @override
  num localeNumberBase(num value, MassUnit unit) {
    switch (unit) {
      case MassUnit.gram:
        return value.toGram;
      case MassUnit.imperialTon:
        return value.toImperialTon;
      case MassUnit.kilogram:
        return value;
      case MassUnit.microgram:
        return value.toMicrogram;
      case MassUnit.milligram:
        return value.toMilligram;
      case MassUnit.ounce:
        return value.toOunce;
      case MassUnit.pound:
        return value.toPound;
      case MassUnit.stone:
        return value.toStone;
      case MassUnit.tonnes:
        return value.toTonnes;
      case MassUnit.usTon:
        return value.toUSTon;
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
  }

  @override
  String localeUnit(
    num value,
    UnitSystem unitSystem,
    MassUnit unit, {
    bool shortUnit = true,
  }) {
    switch (unit) {
      case MassUnit.kilogram:
        return shortUnit ? 'kg' : localeKilograms(value);
      case MassUnit.tonnes:
      case MassUnit.usTon:
      case MassUnit.imperialTon:
        return shortUnit ? 't' : localeTons(value);
      case MassUnit.pound:
        return shortUnit ? 'lb' : localePounds(value);
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
    MassUnit toInternationalUnit = MassUnit.tonnes,
    MassUnit toEuUnit = MassUnit.tonnes,
    MassUnit toImperialUnit = MassUnit.imperialTon,
    MassUnit toUsUnit = MassUnit.usTon,
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

  String localeTons(num value) => Intl.plural(
        value,
        name: 'localeTons',
        zero: 'tons',
        one: 'ton',
        other: 'tons',
        args: [value],
        locale: _localeName,
      );

  String localePounds(num value) => Intl.plural(
        value,
        name: 'localePounds',
        zero: 'pounds',
        one: 'pound',
        other: 'pounds',
        args: [value],
        locale: _localeName,
      );

  String localeKilograms(num value) => Intl.plural(
        value,
        name: 'localeKilograms',
        zero: 'kilograms',
        one: 'kilogram',
        other: 'kilograms',
        args: [value],
        locale: _localeName,
      );

  String localeGrams(num value) => Intl.plural(
        value,
        name: 'localeGrams',
        zero: 'grams',
        one: 'gram',
        other: 'grams',
        args: [value],
        locale: _localeName,
      );
}
