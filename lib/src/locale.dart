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

  String localeLengthUnit(
      final num length, UnitSystem unitSystem, LengthUnit lengthUnit) {
    switch (unitSystem) {
      case UnitSystem.imperial:
      case UnitSystem.us:
        if (lengthUnit == LengthUnit.mile) {
          return localeMile(length);
        } else if (lengthUnit == LengthUnit.inch) {
          return localeInch(length);
        }
        break;
      default:
        if (lengthUnit == LengthUnit.kilometre) {
          return 'km';
        } else if (lengthUnit == LengthUnit.metre) {
          return localeMetre(length);
        }
        break;
    }
    throw UnsupportedError('We currently do not support this combinaison');
  }

  num localeLengthNumber(num lengthInMetre, UnitSystem unitSystem,
      {LengthUnit toInternationalUnit = LengthUnit.kilometre,
      LengthUnit toImperialOrUsUnit = LengthUnit.mile}) {
    num distance;
    switch (unitSystem) {
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
        break;
    }
    return distance;
  }

  String localeLength(num lengthInMetre, UnitSystem unitSystem,
      {bool withUnit = true,
      NumberFormat customNumberFormat,
      LengthUnit toInternationalUnit = LengthUnit.kilometre,
      LengthUnit toImperialOrUsUnit = LengthUnit.mile}) {
    final distance = localeLengthNumber(lengthInMetre, unitSystem,
        toInternationalUnit: toInternationalUnit,
        toImperialOrUsUnit: toImperialOrUsUnit);
    LengthUnit lengthUnit;
    switch (unitSystem) {
      case UnitSystem.imperial:
      case UnitSystem.us:
        lengthUnit = toImperialOrUsUnit;
        break;
      default:
        lengthUnit = toInternationalUnit;
        break;
    }
    final sb =
        StringBuffer((customNumberFormat ?? numberFormat).format(distance));
    if (withUnit) {
      sb.write(' ${localeLengthUnit(distance, unitSystem, lengthUnit)}');
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
        zero: 'miles',
        one: 'mile',
        other: 'miles',
        args: [length],
        locale: localeName,
      );

  String localeInch(num length) => Intl.plural(
        length,
        name: 'localeInch',
        zero: 'inches',
        one: 'inche',
        other: 'inches',
        args: [length],
        locale: localeName,
      );

  String localeMetre(num length) => Intl.plural(
        length,
        name: 'localeMetre',
        zero: 'metre',
        one: 'metre',
        other: 'metres',
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
