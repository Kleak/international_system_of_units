import 'package:international_system_of_units/src/length/international_system.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:international_system_of_units/src/utils.dart';
import 'package:international_system_of_units/src/volume/international_system.dart';
import 'package:intl/intl.dart';

String localeVolumeByLength(num litrePerKilometre, UnitSystem unitSystem) {
  switch (unitSystem) {
    case UnitSystem.international:
      return '$litrePerKilometre l/km';
    case UnitSystem.imperial:
      return '${toImperialGallonPerMile(litrePerKilometre)} gpm';
    case UnitSystem.us:
      return '${toUsGallonPerMile(litrePerKilometre)} gpm';
    default:
      return '$litrePerKilometre l/km';
  }
}

String localeLengthByVolume(num kilometrePerLitre, UnitSystem unitSystem) {
  switch (unitSystem) {
    case UnitSystem.international:
      return '$kilometrePerLitre km/l';
    case UnitSystem.imperial:
      return '${toMilePerImperialGallon(kilometrePerLitre)} mpg';
    case UnitSystem.us:
      return '${toMilePerUsGallon(kilometrePerLitre)} mpg';
    default:
      return '$kilometrePerLitre km/l';
  }
}

String localeLength(num length, UnitSystem unitSystem) {
  switch (unitSystem) {
    case UnitSystem.international:
      return '${length.toKilometre} km';
    case UnitSystem.imperial:
    case UnitSystem.us:
      return '${length.toMile} ${Intl.plural(length, one: 'mile', other: 'miles')}';
    default:
      return '${length.toKilometre} km';
  }
}

String localeVolume(num volume, UnitSystem unitSystem) {
  switch (unitSystem) {
    case UnitSystem.international:
      return '$volume ${Intl.plural(volume, one: 'litre', other: 'litres')}';
    case UnitSystem.imperial:
      return '${volume.toImperialGallons} ${Intl.plural(volume, one: 'gallon', other: 'gallons')}';
    case UnitSystem.us:
      return '${volume.toUSLiquidGallon} ${Intl.plural(volume, one: 'gallon', other: 'gallons')}';
    default:
      return '$volume ${Intl.plural(volume, one: 'litre', other: 'litres')}';
  }
}
