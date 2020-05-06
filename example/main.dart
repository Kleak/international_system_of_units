import 'package:international_system_of_units/international_system_of_units.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart';

void main(List<String> arguments) async {
  for (final locale in [
    Locale.fromSubtags(languageCode: 'fr', countryCode: 'FR'),
    Locale.fromSubtags(languageCode: 'en', countryCode: 'UK'),
    Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
  ]) {
    print('load locale $locale');
    final sIi18n = await InternationalSystemLocalizations.load(locale);
    Intl.defaultLocale = locale.toString();

    // final litrePer100Kilometre = 4;
    // final litrePerKilometre = litrePer100Kilometre / 100;
    // print(sIi18n.localeVolumeByLength(
    //     litrePerKilometre, UnitSystem.international));
    // print(sIi18n.localeVolumeByLength(litrePerKilometre, UnitSystem.us));
    // print(sIi18n.localeVolumeByLength(litrePerKilometre, UnitSystem.imperial));
    // print('');
    // final kilometrePerLitre = 1 / litrePerKilometre;
    // print(sIi18n.localeLengthByVolume(
    //     kilometrePerLitre, UnitSystem.international));
    // print(sIi18n.localeLengthByVolume(kilometrePerLitre, UnitSystem.us));
    // print(sIi18n.localeLengthByVolume(kilometrePerLitre, UnitSystem.imperial));
    // print('');
    // print(sIi18n.localeLength(
    //     3.toMetre(LengthUnit.kilometre), UnitSystem.international));
    // print(sIi18n.localeLength(3.toMetre(LengthUnit.kilometre), UnitSystem.us));
    // print(sIi18n.localeLength(
    //     3.toMetre(LengthUnit.kilometre), UnitSystem.imperial));
    print('');
    print(sIi18n.localeVolume(1, UnitSystem.international));
    // print(sIi18n.localeVolume(3, UnitSystem.us));
    // print(sIi18n.localeVolume(1, UnitSystem.imperial));
    print('');
  }
}
