import 'package:international_system_of_units/src/locale/length.dart';
import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/locale/volume.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:international_system_of_units/src/conversion/volume_per_length/volume_per_length.dart';
import 'package:intl/intl.dart';

class LocaleVolumePerLength extends LocaleBase<VolumePerLengthUnit> {
  final String _localeName;
  final LocaleVolume _volume;
  final LocaleLength _length;

  LocaleVolumePerLength(
    NumberFormat _numberFormat,
    this._localeName,
    this._volume,
    this._length,
  ) : super(_numberFormat);

  @override
  num localeNumberBase(num value, VolumePerLengthUnit unit) {
    switch (unit) {
      case VolumePerLengthUnit.literPerMeter:
        return value;
      case VolumePerLengthUnit.literPerKilometer:
        return value.toLiterPerKilometer;
      case VolumePerLengthUnit.literPer100Kilometer:
        return value.toLiterPer100Kilometer;
      case VolumePerLengthUnit.usGallonPerMile:
        return value.toUsGallonPerMile;
      case VolumePerLengthUnit.imperialGallonPerMile:
        return value.toImperialGallonPerMile;
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
  }

  @override
  String localeUnit(
    num value,
    UnitSystem unitSystem,
    VolumePerLengthUnit unit, {
    bool shortUnit = true,
  }) {
    switch (unit) {
      case VolumePerLengthUnit.imperialGallonPerMile:
        return shortUnit ? 'gpm' : localeImperialGallonsPerMiles(value);
      case VolumePerLengthUnit.usGallonPerMile:
        return shortUnit ? 'gpm' : localeUsGallonsPerMiles(value);
      case VolumePerLengthUnit.literPerMeter:
        return shortUnit ? 'l/m' : localeLitersPerMeters(value);
      case VolumePerLengthUnit.literPerKilometer:
        return shortUnit ? 'l/km' : localeLitersPerKilometers(value);
      case VolumePerLengthUnit.literPer100Kilometer:
        return shortUnit ? 'l/100km' : localeLitersPer100Kilometers(value);
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
    VolumePerLengthUnit toInternationalUnit =
        VolumePerLengthUnit.literPerKilometer,
    VolumePerLengthUnit toImperialUnit =
        VolumePerLengthUnit.imperialGallonPerMile,
    VolumePerLengthUnit toUsUnit = VolumePerLengthUnit.usGallonPerMile,
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

  String localeImperialGallonsPerMiles(num value) {
    final gallons = _volume.localeGallon(value);
    final miles = _length.localeMile(0);
    return _intlImperialGallonsPerMiles(gallons, miles);
  }

  String localeUsGallonsPerMiles(num value) {
    final gallons = _volume.localeGallon(value);
    final miles = _length.localeMile(0);
    return _intlUsGallonsPerMiles(gallons, miles);
  }

  String localeLitersPerMeters(num value) {
    final liters = _volume.localeLiter(value);
    final meters = _length.localeMeter(2);
    return _intlLitersPerMeters(liters, meters);
  }

  String localeLitersPerKilometers(num value) {
    final liters = _volume.localeLiter(value);
    final kilometers = _length.localeKilometer(2);
    return _intlLitersPerKilometers(liters, kilometers);
  }

  String localeLitersPer100Kilometers(num value) {
    final liters = _volume.localeLiter(value);
    final kilometers = _length.localeKilometer(100);
    return _intlLitersPer100Kilometers(liters, kilometers);
  }

  String _intlImperialGallonsPerMiles(String gallons, String miles) =>
      Intl.message(
        'imp $gallons per $miles',
        name: '_intlImperialGallonsPerMiles',
        args: [gallons, miles],
        locale: _localeName,
      );

  String _intlUsGallonsPerMiles(String gallons, String miles) => Intl.message(
        'US $gallons per $miles',
        name: '_intlUsGallonsPerMiles',
        args: [gallons, miles],
        locale: _localeName,
      );

  String _intlLitersPerMeters(String liters, String meters) => Intl.message(
        '$liters per $meters',
        name: '_intlLitersPerMeters',
        args: [liters, meters],
        locale: _localeName,
      );

  String _intlLitersPerKilometers(String liters, String kilometers) =>
      Intl.message(
        '$liters per $kilometers',
        name: '_intlLitersPerKilometers',
        args: [liters, kilometers],
        locale: _localeName,
      );

  String _intlLitersPer100Kilometers(String liters, String kilometers) =>
      Intl.message(
        '$liters per 100 $kilometers',
        name: '_intlLitersPer100Kilometers',
        args: [liters, kilometers],
        locale: _localeName,
      );
}
