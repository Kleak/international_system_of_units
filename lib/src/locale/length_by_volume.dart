import 'package:international_system_of_units/src/locale/length.dart';
import 'package:international_system_of_units/src/locale/volume.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:international_system_of_units/src/utils.dart';
import 'package:intl/intl.dart';

class LocaleLengthByVolume {
  final NumberFormat _numberFormat;
  final String _localeName;
  final LocaleVolume _volume;
  final LocaleLength _length;

  LocaleLengthByVolume(
      this._numberFormat, this._localeName, this._volume, this._length);

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
        (customNumberFormat ?? _numberFormat).format(lengthByVolume));
    if (withUnit) {
      sb.write('${localeLengthByVolumeUnit(lengthByVolume, unitSystem)}');
    }
    return sb.toString();
  }
}
