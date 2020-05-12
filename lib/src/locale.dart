import 'package:international_system_of_units/src/i18n/messages_all.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:international_system_of_units/src/utils.dart';
import 'package:international_system_of_units/src/volume/international_system.dart';
import 'package:international_system_of_units/src/length/international_system.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart';

class InternationalSystemLocalizations {
  static Future<InternationalSystemLocalizations> load(Locale locale) async {
    final localeName = Intl.canonicalizedLocale(locale.toString());
    await initializeMessages(localeName);
    return InternationalSystemLocalizations(locale);
  }

  final Locale locale;
  final String localeName;
  final NumberFormat numberFormat;

  InternationalSystemLocalizations(this.locale)
      : localeName = Intl.canonicalizedLocale(locale.toString()),
        numberFormat =
            NumberFormat(null, Intl.canonicalizedLocale(locale.toString()));

  String localeVolumeByLengthUnit(
      final num volumeByLength, UnitSystem unitSystem) {
    switch (unitSystem) {
      case UnitSystem.international:
        return 'l/km';
      case UnitSystem.imperial:
      case UnitSystem.us:
        return 'gpm';
      default:
        return 'km';
    }
  }

  String localeVolumeByLength(num litrePerMetre, UnitSystem unitSystem,
      {NumberFormat customNumberFormat, bool withUnit = true}) {
    num volumeByLength;
    switch (unitSystem) {
      case UnitSystem.international:
        volumeByLength = litrePerMetre;
        break;
      case UnitSystem.imperial:
        volumeByLength = toImperialGallonPerMile(litrePerMetre);
        break;
      case UnitSystem.us:
        volumeByLength = toUsGallonPerMile(litrePerMetre);
        break;
      default:
        volumeByLength = litrePerMetre;
        break;
    }
    final sb = StringBuffer(
        (customNumberFormat ?? numberFormat).format(volumeByLength));
    if (withUnit) {
      sb.write('${localeVolumeByLengthUnit(volumeByLength, unitSystem)}');
    }
    return sb.toString();
  }

  String localeLengthByVolumeUnit(
      final num volumeByLength, UnitSystem unitSystem) {
    switch (unitSystem) {
      case UnitSystem.international:
        return 'km/l';
      case UnitSystem.imperial:
      case UnitSystem.us:
        return 'mpg';
      default:
        return 'km/l';
    }
  }

  String localeLengthByVolume(num metrePerLitre, UnitSystem unitSystem,
      {NumberFormat customNumberFormat, bool withUnit = true}) {
    num lengthByVolume;
    switch (unitSystem) {
      case UnitSystem.international:
        lengthByVolume = metrePerLitre;
        break;
      case UnitSystem.imperial:
        lengthByVolume = toMilePerImperialGallon(metrePerLitre);
        break;
      case UnitSystem.us:
        lengthByVolume = toMilePerUsGallon(metrePerLitre);
        break;
      default:
        lengthByVolume = metrePerLitre;
        break;
    }
    final sb = StringBuffer(
        (customNumberFormat ?? numberFormat).format(lengthByVolume));
    if (withUnit) {
      sb.write('${localeVolumeByLengthUnit(lengthByVolume, unitSystem)}');
    }
    return sb.toString();
  }

  String localeLengthUnit(final num length, UnitSystem unitSystem) {
    switch (unitSystem) {
      case UnitSystem.international:
        return 'km';
      case UnitSystem.imperial:
      case UnitSystem.us:
        return localeMile(length);
      default:
        return 'km';
    }
  }

  String localeLength(num lengthInMetre, UnitSystem unitSystem,
      {bool withUnit = true,
      NumberFormat customNumberFormat,
      LengthUnit toInternationalUnit = LengthUnit.kilometre,
      LengthUnit toImperialOrUsUnit = LengthUnit.mile}) {
    num distance;
    switch (unitSystem) {
      case UnitSystem.international:
        distance = lengthInMetre;
        if (toInternationalUnit == LengthUnit.kilometre) {
          distance = lengthInMetre.toKilometre;
        }
        break;
      case UnitSystem.imperial:
      case UnitSystem.us:
        distance = lengthInMetre;
        if (toImperialOrUsUnit == LengthUnit.mile) {
          distance = lengthInMetre.toMile;
        }
        break;
      default:
        distance = lengthInMetre;
        if (toInternationalUnit == LengthUnit.kilometre) {
          distance = lengthInMetre.toKilometre;
        }
    }
    final sb =
        StringBuffer((customNumberFormat ?? numberFormat).format(distance));
    if (withUnit) {
      sb.write(' ${localeLengthUnit(distance, unitSystem)}');
    }
    return sb.toString();
  }

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
