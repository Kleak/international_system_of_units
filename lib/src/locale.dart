import 'package:international_system_of_units/src/length/international_system.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:international_system_of_units/src/utils.dart';
import 'package:international_system_of_units/src/volume/international_system.dart';
import 'package:intl/intl.dart';

final _numberFormatter = NumberFormat();

String localeVolumeByLength(num litrePerKilometre, UnitSystem unitSystem) {
  switch (unitSystem) {
    case UnitSystem.international:
      return '${_numberFormatter.format(litrePerKilometre)} l/km';
    case UnitSystem.imperial:
      return '${_numberFormatter.format(toImperialGallonPerMile(litrePerKilometre))} gpm';
    case UnitSystem.us:
      return '${_numberFormatter.format(toUsGallonPerMile(litrePerKilometre))} gpm';
    default:
      return '${_numberFormatter.format(litrePerKilometre)} l/km';
  }
}

String localeLengthByVolume(num kilometrePerLitre, UnitSystem unitSystem) {
  switch (unitSystem) {
    case UnitSystem.international:
      return '${_numberFormatter.format(kilometrePerLitre)} km/l';
    case UnitSystem.imperial:
      return '${_numberFormatter.format(toMilePerImperialGallon(kilometrePerLitre))} mpg';
    case UnitSystem.us:
      return '${_numberFormatter.format(toMilePerUsGallon(kilometrePerLitre))} mpg';
    default:
      return '${_numberFormatter.format(kilometrePerLitre)} km/l';
  }
}

String localeLength(num lengthInMetre, UnitSystem unitSystem) {
  switch (unitSystem) {
    case UnitSystem.international:
      return '${_numberFormatter.format(lengthInMetre.toKilometre)} km';
    case UnitSystem.imperial:
    case UnitSystem.us:
      return '${_numberFormatter.format(lengthInMetre.toMile)} ${localeMile(lengthInMetre.toMile)}';
    default:
      return '${lengthInMetre.toKilometre} km';
  }
}

String localeVolume(num volumeInLitre, UnitSystem unitSystem) {
  switch (unitSystem) {
    case UnitSystem.international:
      return '$volumeInLitre ${localeLitre(volumeInLitre)}';
    case UnitSystem.imperial:
      return '${volumeInLitre.toImperialGallon} ${localeGallon(volumeInLitre.toImperialGallon)}';
    case UnitSystem.us:
      return '${volumeInLitre.toUSLiquidGallon} ${localeGallon(volumeInLitre.toUSLiquidGallon)}';
    default:
      return '$volumeInLitre ${localeLitre(volumeInLitre)}';
  }
}

String localeMile(num length) => Intl.plural(length,
    name: 'localeMile', one: 'mile', other: 'miles', args: [length]);

String localeLitre(num volume) => Intl.plural(volume,
    name: 'localeLitre', one: 'litre', other: 'litres', args: [volume]);

String localeGallon(num volume) => Intl.plural(volume,
    name: 'localeGallon', one: 'gallon', other: 'gallons', args: [volume]);
