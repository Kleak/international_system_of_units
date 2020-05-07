import 'package:international_system_of_units/src/i18n/messages_all.dart';
import 'package:international_system_of_units/src/length/international_system.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:international_system_of_units/src/utils.dart';
import 'package:international_system_of_units/src/volume/international_system.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart';

class InternationalSystemLocalizations {
  static Future<InternationalSystemLocalizations> load(Locale locale) async {
    final name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
c    await initializeMessages(localeName);
    return InternationalSystemLocalizations(localeName);
  }

  final String localeName;
  final NumberFormat numberFormat;

  InternationalSystemLocalizations(this.localeName)
      : numberFormat = NumberFormat(null, localeName);

  String localeVolumeByLength(num litrePerKilometre, UnitSystem unitSystem) {
    switch (unitSystem) {
      case UnitSystem.international:
        return '${numberFormat.format(litrePerKilometre)} l/km';
      case UnitSystem.imperial:
        return '${numberFormat.format(toImperialGallonPerMile(litrePerKilometre))} gpm';
      case UnitSystem.us:
        return '${numberFormat.format(toUsGallonPerMile(litrePerKilometre))} gpm';
      default:
        return '${numberFormat.format(litrePerKilometre)} l/km';
    }
  }

  String localeLengthByVolume(num kilometrePerLitre, UnitSystem unitSystem) {
    switch (unitSystem) {
      case UnitSystem.international:
        return '${numberFormat.format(kilometrePerLitre)} km/l';
      case UnitSystem.imperial:
        return '${numberFormat.format(toMilePerImperialGallon(kilometrePerLitre))} mpg';
      case UnitSystem.us:
        return '${numberFormat.format(toMilePerUsGallon(kilometrePerLitre))} mpg';
      default:
        return '${numberFormat.format(kilometrePerLitre)} km/l';
    }
  }

  String localeLength(num lengthInMetre, UnitSystem unitSystem) {
    switch (unitSystem) {
      case UnitSystem.international:
        return '${numberFormat.format(lengthInMetre.toKilometre)} km';
      case UnitSystem.imperial:
      case UnitSystem.us:
        return '${numberFormat.format(lengthInMetre.toMile)} ${localeMile(lengthInMetre.toMile)}';
      default:
        return '${numberFormat.format(lengthInMetre.toKilometre)} km';
    }
  }

  String localeVolume(num volumeInLitre, UnitSystem unitSystem) {
    switch (unitSystem) {
      case UnitSystem.international:
        return '${numberFormat.format(volumeInLitre)} ${localeLitre(volumeInLitre)}';
      case UnitSystem.imperial:
        return '${numberFormat.format(volumeInLitre.toImperialGallon)} ${localeGallon(volumeInLitre.toImperialGallon)}';
      case UnitSystem.us:
        return '${numberFormat.format(volumeInLitre.toUSLiquidGallon)} ${localeGallon(volumeInLitre.toUSLiquidGallon)}';
      default:
        return '${numberFormat.format(volumeInLitre)} ${localeLitre(volumeInLitre)}';
    }
  }

  String localeMile(num length) => Intl.plural(
        length,
        name: 'localeMile',
        one: 'mile',
        other: 'miles',
        args: [length],
        locale: localeName,
      );

  String localeLitre(num volume) => Intl.plural(
        volume,
        name: 'localeLitre',
        one: 'litre',
        other: 'litres',
        args: [volume],
        locale: localeName,
      );

  String localeGallon(num volume) => Intl.plural(
        volume,
        name: 'localeGallon',
        one: 'gallon',
        other: 'gallons',
        args: [volume],
        locale: localeName,
      );
}
