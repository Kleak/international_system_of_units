import 'package:international_system_of_units/international_system_of_units.dart';
import 'package:international_system_of_units/src/locale/length_per_volume.dart';
import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/locale/volume_per_length.dart';
import 'package:intl/intl.dart';

/// represent all the supported unit for [LocaleFuelEconomy]
enum FuelEconomyUnit {
  litersPer100Kilometers,
  milesPerUsGallons,
  milesPerImperialGallons,
}

class LocaleFuelEconomy extends LocaleBase<FuelEconomyUnit> {
  final LocaleVolumePerLength? _volumePerLength ;
  final LocaleLengthPerVolume? _lengthPerVolume;

  LocaleFuelEconomy(
      NumberFormat numberFormat, this._volumePerLength, this._lengthPerVolume)
      : super(numberFormat);

  @override
  num localeNumberBase(num value, FuelEconomyUnit? unit) {
    switch (unit) {
      case FuelEconomyUnit.litersPer100Kilometers:
        return value.toLiterPer100Kilometer;
      case FuelEconomyUnit.milesPerUsGallons:
        return value.inverseVolumePerLength.toMilePerUsGallon;
      case FuelEconomyUnit.milesPerImperialGallons:
        return value.inverseVolumePerLength.toMilePerImperialGallon;
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
  }

  @override
  String localeUnit(num value, UnitSystem unitSystem, FuelEconomyUnit? unit,
      {bool shortUnit = true}) {
    switch (unit) {
      case FuelEconomyUnit.litersPer100Kilometers:
        return shortUnit
            ? 'l/km'
            : _volumePerLength!.localeLitersPer100Kilometers(value);
      case FuelEconomyUnit.milesPerUsGallons:
        return shortUnit
            ? 'mpg'
            : _lengthPerVolume!.localeMilesPerUsGallons(value);
      case FuelEconomyUnit.milesPerImperialGallons:
        return shortUnit
            ? 'mpg'
            : _lengthPerVolume!.localeMilesPerImperialGallons(value);
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
    NumberFormat? customNumberFormat,
    FuelEconomyUnit? toInternationalUnit =
        FuelEconomyUnit.litersPer100Kilometers,
    FuelEconomyUnit? toImperialUnit = FuelEconomyUnit.milesPerImperialGallons,
    FuelEconomyUnit? toUsUnit = FuelEconomyUnit.milesPerUsGallons,
    FuelEconomyUnit? toEuUnit = FuelEconomyUnit.litersPer100Kilometers,
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
}
