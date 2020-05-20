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
      case VolumeUnit.milliliters:
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
      case VolumeUnit.cubicFoot:
        return shortUnit ? 'ft3' : localeCubicFoot(value);
      case VolumeUnit.cubicInch:
        return shortUnit ? 'in3' : localeCubicInch(value);
      case VolumeUnit.cubicMetres:
        return shortUnit ? 'm3' : localeCubicMeter(value);
      case VolumeUnit.imperialCup:
        return shortUnit ? 'imp c.' : 'imperial ${localeCup(value)}';
      case VolumeUnit.usLegalCup:
        return shortUnit ? 'us c.' : 'us ${localeCup(value)}';
      case VolumeUnit.imperialFluidOunces:
        return shortUnit ? 'fl oz imp' : 'imperial ${localeFluidOunces(value)}';
      case VolumeUnit.usFluidOunces:
        return shortUnit ? 'us fl oz' : 'us ${localeFluidOunces(value)}';
      case VolumeUnit.imperialQuart:
        return shortUnit ? 'imp qt.' : 'imperial ${localeQuart(value)}';
      case VolumeUnit.usLiquidQuart:
        return shortUnit ? 'us qt.' : 'US ${localeQuart(value)}';
      case VolumeUnit.imperialPint:
        return shortUnit ? 'imp pt.' : 'imperial ${localePint(value)}';
      case VolumeUnit.usLiquidPint:
        return shortUnit ? 'us pt.' : 'US ${localePint(value)}';
      case VolumeUnit.imperialTablespoon:
        return shortUnit ? 'imp tbsp.' : 'imperial ${localeTablespoon(value)}';
      case VolumeUnit.usTablespoon:
        return shortUnit ? 'us tbsp.' : 'US ${localeTablespoon(value)}';
      case VolumeUnit.imperialTeaspoon:
        return shortUnit ? 'imp tsp.' : 'imperial ${localeTeaspoon(value)}';
      case VolumeUnit.usTeaspoon:
        return shortUnit ? 'us tsp.' : 'US ${localeTeaspoon(value)}';
      case VolumeUnit.usLiquidGallon:
        return shortUnit ? 'us gal' : 'imperial ${localeGallons(value)}';
      case VolumeUnit.imperialGallons:
        return shortUnit ? 'imp gal' : 'US ${localeGallons(value)}';
      case VolumeUnit.milliliters:
        return shortUnit ? 'ml' : localeMilliliters(value);
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

  String localeCubicFoot(num volume) => Intl.plural(
        volume,
        name: 'localeCubicFoot',
        zero: 'cubic foot',
        one: 'cubic foot',
        other: 'cubic foot',
        args: [volume],
        locale: _localeName,
      );

  String localeCubicInch(num volume) => Intl.plural(
        volume,
        name: 'localeCubicInch',
        zero: 'cubic inch',
        one: 'cubic inch',
        other: 'cubic inch',
        args: [volume],
        locale: _localeName,
      );

  String localeCubicMeter(num volume) => Intl.plural(
        volume,
        name: 'localeCubicMeter',
        zero: 'cubic meter',
        one: 'cubic meter',
        other: 'cubic meter',
        args: [volume],
        locale: _localeName,
      );

  String localeCup(num volume) => Intl.plural(
        volume,
        name: 'localeCup',
        zero: 'cups',
        one: 'cup',
        other: 'cups',
        args: [volume],
        locale: _localeName,
      );

  String localeFluidOunces(num volume) => Intl.plural(
        volume,
        name: 'localeFluidOunces',
        zero: 'fluid ounces',
        one: 'fluid ounce',
        other: 'fluid ounces',
        args: [volume],
        locale: _localeName,
      );

  String localeQuart(num volume) => Intl.plural(
        volume,
        name: 'localeQuart',
        zero: 'quarts',
        one: 'quart',
        other: 'quarts',
        args: [volume],
        locale: _localeName,
      );

  String localePint(num volume) => Intl.plural(
        volume,
        name: 'localePint',
        zero: 'pint',
        one: 'pint',
        other: 'pints',
        args: [volume],
        locale: _localeName,
      );

  String localeTablespoon(num volume) => Intl.plural(
        volume,
        name: 'localeTablespoon',
        zero: 'tablespoon',
        one: 'tablespoon',
        other: 'tablespoons',
        args: [volume],
        locale: _localeName,
      );

  String localeTeaspoon(num volume) => Intl.plural(
        volume,
        name: 'localeTeaspoon',
        zero: 'teaspoon',
        one: 'teaspoon',
        other: 'teaspoons',
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

  String localeMilliliters(num volume) => Intl.plural(
        volume,
        name: 'localeMilliliters',
        zero: 'milliliters',
        one: 'milliliter',
        other: 'milliliters',
        args: [volume],
        locale: _localeName,
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
}
