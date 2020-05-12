import 'package:international_system_of_units/src/unit_system.dart';
import 'package:international_system_of_units/src/volume/international_system.dart';
import 'package:intl/intl.dart';

class LocaleVolume {
  final NumberFormat _numberFormat;
  final String _localeName;

  LocaleVolume(this._numberFormat, this._localeName);

  String localeVolumeUnit(final num volume, UnitSystem unitSystem) {
    switch (unitSystem) {
      case UnitSystem.international:
        return localeLitre(volume);
      case UnitSystem.imperial:
      case UnitSystem.us:
        return localeGallon(volume);
      default:
        return localeLitre(volume);
    }
  }

  String localeVolume(num volumeInLitre, UnitSystem unitSystem) {
    switch (unitSystem) {
      case UnitSystem.international:
        return '${_numberFormat.format(volumeInLitre)} ${localeLitre(volumeInLitre)}';
      case UnitSystem.imperial:
        return '${_numberFormat.format(volumeInLitre.toImperialGallon)} ${localeGallon(volumeInLitre.toImperialGallon)}';
      case UnitSystem.us:
        return '${_numberFormat.format(volumeInLitre.toUSLiquidGallon)} ${localeGallon(volumeInLitre.toUSLiquidGallon)}';
      default:
        return '${_numberFormat.format(volumeInLitre)} ${localeLitre(volumeInLitre)}';
    }
  }

  String localeLitre(num volume) => Intl.plural(
        volume,
        name: 'localeLitre',
        one: 'litre',
        other: 'litres',
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
