import 'package:international_system_of_units/src/locale/length.dart';
import 'package:international_system_of_units/src/locale/volume.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:international_system_of_units/src/utils.dart';
import 'package:intl/intl.dart';

class LocaleVolumeByLength {
  final NumberFormat _numberFormat;
  final String _localeName;
  final LocaleVolume _volume;
  final LocaleLength _length;

  LocaleVolumeByLength(
      this._numberFormat, this._localeName, this._volume, this._length);

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
        (customNumberFormat ?? _numberFormat).format(volumeByLength));
    if (withUnit) {
      sb.write('${localeVolumeByLengthUnit(volumeByLength, unitSystem)}');
    }
    return sb.toString();
  }
}
