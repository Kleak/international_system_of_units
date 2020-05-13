import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:international_system_of_units/src/volume/international_system.dart';
import 'package:intl/intl.dart';

class LocaleVolume extends LocaleBase<VolumeUnit> {
  final String _localeName;

  LocaleVolume(NumberFormat _numberFormat, this._localeName)
      : super(_numberFormat);

  @override
  num localeNumber(
    num value,
    UnitSystem unitSystem, {
    VolumeUnit toInternationalUnit = VolumeUnit.litres,
    VolumeUnit toImperialUnit = VolumeUnit.imperialGallons,
    VolumeUnit toUsUnit = VolumeUnit.usLiquidGallon,
  }) {
    num distance;
    switch (unitSystem) {
      case UnitSystem.imperial:
        if (toUsUnit == VolumeUnit.imperialGallons) {
          distance = value.toImperialGallon;
        }
        break;
      case UnitSystem.us:
        if (toUsUnit == VolumeUnit.usLiquidGallon) {
          distance = value.toUSLiquidGallon;
        } else {
          distance = value;
        }
        break;
      default:
        if (toInternationalUnit == VolumeUnit.millilitres) {
          distance = value.toMillilitres;
        } else {
          distance = value;
        }
        break;
    }
    return distance;
  }

  @override
  String localeUnit(num value, UnitSystem unitSystem, VolumeUnit unit) {
    switch (unit) {
      case VolumeUnit.usLiquidGallon:
      case VolumeUnit.imperialGallons:
        return localeGallon(value);
      case VolumeUnit.litres:
        return localeLiter(value);
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
    VolumeUnit toInternationalUnit = VolumeUnit.litres,
    VolumeUnit toImperialUnit = VolumeUnit.imperialGallons,
    VolumeUnit toUsUnit = VolumeUnit.usLiquidGallon,
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

  String localeLiter(num volume) => Intl.plural(
        volume,
        name: 'localeLiter',
        one: 'liter',
        other: 'liters',
        args: [volume],
        locale: _localeName,
      );

  String localeGallon(num volume) => Intl.plural(
        volume,
        name: 'localeGallon',
        one: 'gallon',
        other: 'gallons',
        args: [volume],
        locale: _localeName,
      );
}
