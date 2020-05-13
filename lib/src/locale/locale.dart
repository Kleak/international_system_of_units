import 'package:international_system_of_units/src/conversion/length/international_system.dart';
import 'package:international_system_of_units/src/conversion/volume/international_system.dart';
import 'package:international_system_of_units/src/i18n/messages_all.dart';
import 'package:international_system_of_units/src/locale/length_by_volume.dart';
import 'package:international_system_of_units/src/locale/mass.dart';
import 'package:international_system_of_units/src/locale/time.dart';
import 'package:international_system_of_units/src/locale/volume_per_length.dart';
import 'package:international_system_of_units/src/locale/length.dart';
import 'package:international_system_of_units/src/locale/volume.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:international_system_of_units/src/utils.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart';

class InternationalSystemLocalizations {
  static Future<InternationalSystemLocalizations> load(Locale locale) async {
    final localeName = Intl.canonicalizedLocale(locale.toString());
    await initializeMessages(localeName);
    return InternationalSystemLocalizations(locale);
  }

  final String _localeName;
  final NumberFormat _numberFormat;

  LocaleLength length;
  LocaleVolume volume;
  LocaleMass mass;
  LocaleTime time;

  LocaleVolumePerLength volumePerLength;
  LocaleLengthByVolume lengthByVolume;

  InternationalSystemLocalizations(Locale locale)
      : _localeName = Intl.canonicalizedLocale(locale.toString()),
        _numberFormat =
            NumberFormat(null, Intl.canonicalizedLocale(locale.toString())) {
    length = LocaleLength(_numberFormat, _localeName);
    volume = LocaleVolume(_numberFormat, _localeName);
    mass = LocaleMass(_numberFormat, _localeName);
    time = LocaleTime(_numberFormat, _localeName);
    volumePerLength =
        LocaleVolumePerLength(_numberFormat, _localeName, volume, length);
    lengthByVolume =
        LocaleLengthByVolume(_numberFormat, _localeName, volume, length);
  }

  @Deprecated('Use volumeByLength.localeVolumeByLengthUnit instead')
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

  @Deprecated('Use volumeByLength.localeVolumeByLength instead')
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
        (customNumberFormat ?? _numberFormat).format(volumeByLength));
    if (withUnit) {
      sb.write('${localeVolumeByLengthUnit(volumeByLength, unitSystem)}');
    }
    return sb.toString();
  }

  @Deprecated('Use lengthByVolume.localeLengthByVolumeUnit instead')
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

  @Deprecated('Use lengthByVolume.localeLengthByVolume instead')
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
        (customNumberFormat ?? _numberFormat).format(lengthByVolume));
    if (withUnit) {
      sb.write('${localeLengthByVolumeUnit(lengthByVolume, unitSystem)}');
    }
    return sb.toString();
  }

  @Deprecated('Use length.unit instead')
  LengthUnit lengthUnit(UnitSystem unitSystem,
      {LengthUnit toInternationalUnit = LengthUnit.kilometre,
      LengthUnit toImperialOrUsUnit = LengthUnit.mile}) {
    switch (unitSystem) {
      case UnitSystem.imperial:
      case UnitSystem.us:
        return toImperialOrUsUnit;
      default:
        return toInternationalUnit;
    }
  }

  @Deprecated('Use length.localeUnit instead')
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

  @Deprecated('Use length.localeNumber instead')
  num localeLengthNumber(num lengthInMetre, UnitSystem unitSystem,
      {LengthUnit toInternationalUnit = LengthUnit.kilometre,
      LengthUnit toImperialOrUsUnit = LengthUnit.mile}) {
    num distance;
    switch (unitSystem) {
      case UnitSystem.imperial:
      case UnitSystem.us:
        if (toImperialOrUsUnit == LengthUnit.mile) {
          distance = lengthInMetre.toMile;
        } else if (toImperialOrUsUnit == LengthUnit.inch) {
          distance = lengthInMetre.toInch;
        } else {
          distance = lengthInMetre;
        }
        break;
      default:
        distance = lengthInMetre;
        if (toInternationalUnit == LengthUnit.kilometre) {
          distance = lengthInMetre.toKilometre;
        } else {
          distance = lengthInMetre;
        }
        break;
    }
    return distance;
  }

  @Deprecated('Use length.locale instead')
  String localeLength(num lengthInMetre, UnitSystem unitSystem,
      {bool withUnit = true,
      NumberFormat customNumberFormat,
      LengthUnit toInternationalUnit = LengthUnit.kilometre,
      LengthUnit toImperialOrUsUnit = LengthUnit.mile}) {
    final distance = localeLengthNumber(lengthInMetre, unitSystem,
        toInternationalUnit: toInternationalUnit,
        toImperialOrUsUnit: toImperialOrUsUnit);
    final _lengthUnit = lengthUnit(unitSystem,
        toInternationalUnit: toInternationalUnit,
        toImperialOrUsUnit: toImperialOrUsUnit);
    final sb =
        StringBuffer((customNumberFormat ?? _numberFormat).format(distance));
    if (withUnit) {
      sb.write(' ${localeLengthUnit(distance, unitSystem, _lengthUnit)}');
    }
    return sb.toString();
  }

  @Deprecated('Use length.localeMile instead')
  String localeMile(num length) => Intl.plural(
        length,
        name: 'localeMile',
        zero: 'miles',
        one: 'mile',
        other: 'miles',
        args: [length],
        locale: _localeName,
      );

  @Deprecated('Use length.localeInch instead')
  String localeInch(num length) => Intl.plural(
        length,
        name: 'localeInch',
        zero: 'inches',
        one: 'inche',
        other: 'inches',
        args: [length],
        locale: _localeName,
      );

  @Deprecated('Use length.localeMetre instead')
  String localeMetre(num length) => Intl.plural(
        length,
        name: 'localeMetre',
        zero: 'metre',
        one: 'metre',
        other: 'metres',
        args: [length],
        locale: _localeName,
      );

  @Deprecated('Use volume.localeVolumeUnit instead')
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

  @Deprecated('Use volume.localeVolume instead')
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

  @Deprecated('Use volume.localeLitre instead')
  String localeLitre(num volume) => Intl.plural(
        volume,
        name: 'localeLitre',
        one: 'litre',
        other: 'litres',
        args: [volume],
        locale: _localeName,
      );

  @Deprecated('Use volume.localeGallon instead')
  String localeGallon(num volume) => Intl.plural(
        volume,
        name: 'localeGallon',
        one: 'gallon',
        other: 'gallons',
        args: [volume],
        locale: _localeName,
      );
}
