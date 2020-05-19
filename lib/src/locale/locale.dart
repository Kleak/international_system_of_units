import 'package:international_system_of_units/src/conversion/length/international_system.dart';
import 'package:international_system_of_units/src/conversion/volume/international_system.dart';
import 'package:international_system_of_units/src/i18n/messages_all.dart';
import 'package:international_system_of_units/src/locale/flue_economy.dart';
import 'package:international_system_of_units/src/locale/length_per_time.dart';
import 'package:international_system_of_units/src/locale/length_per_volume.dart';
import 'package:international_system_of_units/src/locale/mass.dart';
import 'package:international_system_of_units/src/locale/mass_per_length.dart';
import 'package:international_system_of_units/src/locale/pressure.dart';
import 'package:international_system_of_units/src/locale/temperature.dart';
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
  LocaleTemperature temperature;
  LocalePressure pressure;
  LocaleVolumePerLength volumePerLength;
  LocaleLengthPerVolume lengthPerVolume;
  LocaleLengthPerTime lengthPerTime;
  LocaleMassPerLength massPerLength;
  LocaleFuelEconomy fuelEconomy;

  InternationalSystemLocalizations(Locale locale)
      : _localeName = Intl.canonicalizedLocale(locale.toString()),
        _numberFormat =
            NumberFormat(null, Intl.canonicalizedLocale(locale.toString())) {
    length = LocaleLength(_numberFormat, _localeName);
    volume = LocaleVolume(_numberFormat, _localeName);
    mass = LocaleMass(_numberFormat, _localeName);
    time = LocaleTime(_numberFormat, _localeName);
    temperature = LocaleTemperature(_numberFormat, _localeName);
    pressure = LocalePressure(_numberFormat, _localeName, mass, length);
    volumePerLength =
        LocaleVolumePerLength(_numberFormat, _localeName, volume, length);
    lengthPerVolume =
        LocaleLengthPerVolume(_numberFormat, _localeName, volume, length);
    lengthPerTime =
        LocaleLengthPerTime(_numberFormat, _localeName, length, time);
    massPerLength =
        LocaleMassPerLength(_numberFormat, _localeName, length, mass);
    fuelEconomy =
        LocaleFuelEconomy(_numberFormat, volumePerLength, lengthPerVolume);
  }
}
