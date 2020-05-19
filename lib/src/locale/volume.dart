import 'package:international_system_of_units/src/conversion/volume/international_system.dart';
import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:intl/intl.dart';

class LocaleVolume extends LocaleBase<VolumeUnit> {
  final String _localeName;

  LocaleVolume(NumberFormat _numberFormat, this._localeName)
      : super(_numberFormat);

  @override
  num localeNumberBase(num value, VolumeUnit unit) {
    switch (unit) {
      case VolumeUnit.cubicFoot:
        return value.toCubicFoot;
      case VolumeUnit.cubicInch:
        return value.toCubicInch;
      case VolumeUnit.cubicMetres:
        return value.toCubicMeters;
      case VolumeUnit.imperialCup:
        return value.toImperialCup;
      case VolumeUnit.imperialFluidOunces:
        return value.toImperialFluidOunces;
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
        return value.toMilliliters;
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
  String localeUnit(
    num value,
    UnitSystem unitSystem,
    VolumeUnit unit, {
    bool shortUnit = true,
  }) {
    switch (unit) {
      case VolumeUnit.usLiquidGallon:
      case VolumeUnit.imperialGallons:
        return shortUnit ? 'gal' : localeGallons(value);
      case VolumeUnit.litres:
        return shortUnit ? 'l' : localeLiters(value);
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
    VolumeUnit toInternationalUnit = VolumeUnit.litres,
    VolumeUnit toEuUnit = VolumeUnit.litres,
    VolumeUnit toImperialUnit = VolumeUnit.imperialGallons,
    VolumeUnit toUsUnit = VolumeUnit.usLiquidGallon,
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

  String localeLiters(num volume) => Intl.plural(
        volume,
        name: 'localeLiters',
        zero: 'liters',
        one: 'liter',
        other: 'liters',
        args: [volume],
        locale: _localeName,
      );

  String localeGallons(num volume) => Intl.plural(
        volume,
        name: 'localeGallons',
        zero: 'gallons',
        one: 'gallon',
        other: 'gallons',
        args: [volume],
        locale: _localeName,
      );
}
