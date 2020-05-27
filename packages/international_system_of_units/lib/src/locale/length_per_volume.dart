import 'package:international_system_of_units/src/conversion/length_per_volume/length_per_volume.dart';
import 'package:international_system_of_units/src/locale/length.dart';
import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/locale/volume.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:intl/intl.dart';

class LocaleLengthPerVolume extends LocaleBase<LengthPerVolumeUnit> {
  final String _localeName;
  final LocaleVolume _volume;
  final LocaleLength _length;

  LocaleLengthPerVolume(
      NumberFormat _numberFormat, this._localeName, this._volume, this._length)
      : super(_numberFormat);

  @override
  num localeNumberBase(num value, LengthPerVolumeUnit unit) {
    switch (unit) {
      case LengthPerVolumeUnit.meterPerLiter:
        return value;
      case LengthPerVolumeUnit.kilometerPerLiter:
        return value.toKilometerPerLiter;
      case LengthPerVolumeUnit.milePerImperialGallon:
        return value.toMilePerImperialGallon;
      case LengthPerVolumeUnit.milePerUsGallon:
        return value.toMilePerUsGallon;
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
  }

  @override
  String localeUnit(
    num value,
    UnitSystem unitSystem,
    LengthPerVolumeUnit unit, {
    bool shortUnit = true,
  }) {
    switch (unit) {
      case LengthPerVolumeUnit.kilometerPerLiter:
        return shortUnit ? 'km/l' : localeKilometersPerLiters(value);
      case LengthPerVolumeUnit.meterPerLiter:
        return shortUnit ? 'm/l' : localeMetersPerLiters(value);
      case LengthPerVolumeUnit.milePerImperialGallon:
        return shortUnit ? 'mpg' : localeMilesPerImperialGallons(value);
      case LengthPerVolumeUnit.milePerUsGallon:
        return shortUnit ? 'mpg' : localeMilesPerUsGallons(value);
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
    LengthPerVolumeUnit toInternationalUnit =
        LengthPerVolumeUnit.kilometerPerLiter,
    LengthPerVolumeUnit toEuUnit = LengthPerVolumeUnit.kilometerPerLiter,
    LengthPerVolumeUnit toImperialUnit =
        LengthPerVolumeUnit.milePerImperialGallon,
    LengthPerVolumeUnit toUsUnit = LengthPerVolumeUnit.milePerUsGallon,
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

  String localeKilometersPerLiters(num value) {
    final kilometers = _length.localeKilometers(value);
    final liters = _volume.localeLiters(2);
    return _intlKilometersPerLiters(kilometers, liters);
  }

  String localeMetersPerLiters(num value) {
    final meters = _length.localeMeters(value);
    final liters = _volume.localeLiters(2);
    return _intlMetersPerLiters(meters, liters);
  }

  String localeMilesPerImperialGallons(num value) {
    final miles = _length.localeMiles(value);
    final gallons = _volume.localeGallons(2);
    return _intlMilesPerImperialGallons(miles, gallons);
  }

  String localeMilesPerUsGallons(num value) {
    final miles = _length.localeMiles(value);
    final gallons = _volume.localeGallons(2);
    return _intlMilesPerUsGallons(miles, gallons);
  }

  String _intlKilometersPerLiters(String kilometers, String liters) =>
      Intl.message(
        '$kilometers per $liters',
        name: '_intlKilometersPerLiters',
        args: [kilometers, liters],
        locale: _localeName,
      );

  String _intlMetersPerLiters(String meters, String liters) => Intl.message(
        '$meters per $liters',
        name: '_intlMetersPerLiters',
        args: [meters, liters],
        locale: _localeName,
      );

  String _intlMilesPerImperialGallons(String miles, String gallons) =>
      Intl.message(
        '$miles per imperial $gallons',
        name: '_intlMilesPerImperialGallons',
        args: [miles, gallons],
        locale: _localeName,
      );

  String _intlMilesPerUsGallons(String miles, String gallons) => Intl.message(
        '$miles per US $gallons',
        name: '_intlMilesPerUsGallons',
        args: [miles, gallons],
        locale: _localeName,
      );
}
