import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/mass/international_system.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:intl/intl.dart';

class LocaleMass extends LocaleBase<MassUnit> {
  final String _localeName;

  LocaleMass(NumberFormat _numberFormat, this._localeName)
      : super(_numberFormat);

  @override
  num localeNumber(
    num value,
    UnitSystem unitSystem, {
    MassUnit toInternationalUnit,
    MassUnit toImperialUnit,
    MassUnit toUsUnit,
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

  num _localeNumberBase(num value, MassUnit unit) {
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
  String localeUnit(num value, UnitSystem unitSystem, MassUnit unit) {
    switch (unit) {
      case MassUnit.kilogram:
        return 'kg';
      case MassUnit.tonnes:
      case MassUnit.usTon:
      case MassUnit.imperialTon:
        return localeTon(value);
      case MassUnit.pound:
        return localePound(value);
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
  }

  @override
  String locale(
    num value,
    UnitSystem unitSystem, {
    bool withUnit = true,
    NumberFormat customNumberFormat,
    MassUnit toInternationalUnit = MassUnit.tonnes,
    MassUnit toImperialUnit = MassUnit.imperialTon,
    MassUnit toUsUnit = MassUnit.usTon,
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

  String localeTon(num value) => Intl.plural(
        value,
        name: 'localeTon',
        one: 'ton',
        other: 'tons',
        args: [value],
        locale: _localeName,
      );

  String localePound(num value) => Intl.plural(
        value,
        name: 'localePound',
        one: 'pound',
        other: 'pounds',
        args: [value],
        locale: _localeName,
      );
}
