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
    switch (unitSystem) {
      case UnitSystem.imperial:
        return _localeNumberBase(value, toImperialUnit);
      case UnitSystem.us:
        return _localeNumberBase(value, toUsUnit);
      default:
        return _localeNumberBase(value, toInternationalUnit);
    }
  }

  num _localeNumberBase(num value, VolumeUnit unit) {
    switch (unit) {
      case VolumeUnit.cubicFoot:
        return value.toCubicFoot;
      case VolumeUnit.cubicInch:
        return value.toCubicInch;
      case VolumeUnit.cubicMetres:
        return value.toCubicMetres;
      case VolumeUnit.imperialCup:
        return value.toImperialCup;
      case VolumeUnit.imperialFluidOunces:
        return value.toImpetialFluidOunces;
      case VolumeUnit.imperialGallons:
        return value.toImperialGallon;
      case VolumeUnit.imperialPint:
        return value.toImperialPint;
      case VolumeUnit.imperialQuart:
        return value.toImperialQuart;
      case VolumeUnit.imperialTablespoon:
        return value.toImperialTablespoon;
      case VolumeUnit.imperialTeaspoon:
        return value.toImperialTeaspoon;
      case VolumeUnit.litres:
        return value;
      case VolumeUnit.millilitres:
        return value.toMillilitres;
      case VolumeUnit.usFluidOunces:
        return value.toUSFluidOunces;
      case VolumeUnit.usLegalCup:
        return value.toUSLegalCup;
      case VolumeUnit.usLiquidGallon:
        return value.toUSLiquidGallon;
      case VolumeUnit.usLiquidPint:
        return value.toUSLiquidPint;
      case VolumeUnit.usLiquidQuart:
        return value.toUSLiquidQuart;
      case VolumeUnit.usTablespoon:
        return value.toUSTablespoon;
      case VolumeUnit.usTeaspoon:
        return value.toUSTeaspoon;
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
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
