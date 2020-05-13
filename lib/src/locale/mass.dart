import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/mass/international_system.dart';
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
        return value;
      case MassUnit.imperialTon:
        return value.toImperialTon;
      case MassUnit.kilogram:
        return value.toKilogram;
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
        return shortUnit ? 'kg' : localeKilogram(value);
      case MassUnit.tonnes:
      case MassUnit.usTon:
      case MassUnit.imperialTon:
        return shortUnit ? 't' : localeTon(value);
      case MassUnit.pound:
        return shortUnit ? 'lb' : localePound(value);
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
    MassUnit toImperialUnit = MassUnit.imperialTon,
    MassUnit toUsUnit = MassUnit.usTon,
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

  String localeTon(num value) => Intl.plural(
        value,
        name: 'localeTon',
        zero: 'tons',
        one: 'ton',
        other: 'tons',
        args: [value],
        locale: _localeName,
      );

  String localePound(num value) => Intl.plural(
        value,
        name: 'localePound',
        zero: 'pounds',
        one: 'pound',
        other: 'pounds',
        args: [value],
        locale: _localeName,
      );

  String localeKilogram(num value) => Intl.plural(
        value,
        name: 'localeKilogram',
        zero: 'kilograms',
        one: 'kilogram',
        other: 'kilograms',
        args: [value],
        locale: _localeName,
      );
}
