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
    num distance;
    switch (unitSystem) {
      case UnitSystem.imperial:
        if (toImperialUnit == MassUnit.imperialTon) {
          distance = value.toImperialTon;
        }
        break;
      case UnitSystem.us:
        if (toUsUnit == MassUnit.usTon) {
          distance = value.toUSTon;
        } else {
          distance = value;
        }
        break;
      default:
        if (toInternationalUnit == MassUnit.kilogram) {
          distance = value.toKilogram;
        } else if (toInternationalUnit == MassUnit.tonnes) {
          distance = value.toTonnes;
        } else {
          distance = value;
        }
        break;
    }
    return distance;
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
        one: 'Ton',
        other: 'Tons',
        args: [value],
        locale: _localeName,
      );
}
