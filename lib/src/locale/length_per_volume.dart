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
        return shortUnit ? 'km/l' : localeKilometerPerLiter(value);
      case LengthPerVolumeUnit.meterPerLiter:
        return shortUnit ? 'm/l' : localeMeterPerLiter(value);
      case LengthPerVolumeUnit.milePerImperialGallon:
        return shortUnit ? 'mpg' : localeMilePerImperialGallon(value);
      case LengthPerVolumeUnit.milePerUsGallon:
        return shortUnit ? 'mpg' : localeMilePerUsGallon(value);
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
    LengthPerVolumeUnit toImperialUnit =
        LengthPerVolumeUnit.milePerImperialGallon,
    LengthPerVolumeUnit toUsUnit = LengthPerVolumeUnit.milePerUsGallon,
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

  String localeKilometerPerLiter(num value) {
    final kilometers = _length.localeKilometer(value);
    final liters = _volume.localeLiter(2);
    return _intlKilometersPerLiters(kilometers, liters);
  }

  String localeMeterPerLiter(num value) {
    final meters = _length.localeMeter(value);
    final liters = _volume.localeLiter(2);
    return _intlMeterPerLiter(meters, liters);
  }

  String localeMilePerImperialGallon(num value) {
    final miles = _length.localeMile(value);
    final gallons = _volume.localeGallon(2);
    return _intlMilePerImperialGallon(miles, gallons);
  }

  String localeMilePerUsGallon(num value) {
    final miles = _length.localeMile(value);
    final gallons = _volume.localeGallon(2);
    return _intlMilePerUsGallon(miles, gallons);
  }

  String _intlKilometersPerLiters(String kilometers, String liters) =>
      Intl.message(
        '$kilometers per $liters',
        name: '_intlKilometersPerLiters',
        args: [kilometers, liters],
        locale: _localeName,
      );

  String _intlMeterPerLiter(String meters, String liters) => Intl.message(
        '$meters per $liters',
        name: '_intlMeterPerLiter',
        args: [meters, liters],
        locale: _localeName,
      );

  String _intlMilePerImperialGallon(String miles, String gallons) =>
      Intl.message(
        '$miles per imp $gallons',
        name: '_intlMilePerImperialGallon',
        args: [miles, gallons],
        locale: _localeName,
      );

  String _intlMilePerUsGallon(String miles, String gallons) => Intl.message(
        '$miles per US $gallons',
        name: '_intlMilePerUsGallon',
        args: [miles, gallons],
        locale: _localeName,
      );
}
