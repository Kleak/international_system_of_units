import 'package:international_system_of_units/international_system_of_units.dart';
import 'package:international_system_of_units/src/i18n/messages_all.dart';
import 'package:intl/intl.dart';

void main(List<String> arguments) async {
  for (final language in ['fr', 'en_US', 'en_UK']) {
    print('set language to $language');
    Intl.defaultLocale = language;
    await initializeMessages(language);

    final litrePer100Kilometre = 4;
    final litrePerKilometre = litrePer100Kilometre / 100;
    print(localeVolumeByLength(litrePerKilometre, UnitSystem.international));
    print(localeVolumeByLength(litrePerKilometre, UnitSystem.us));
    print(localeVolumeByLength(litrePerKilometre, UnitSystem.imperial));
    final kilometrePerLitre = 1 / litrePerKilometre;
    print(localeLengthByVolume(kilometrePerLitre, UnitSystem.international));
    print(localeLengthByVolume(kilometrePerLitre, UnitSystem.us));
    print(localeLengthByVolume(kilometrePerLitre, UnitSystem.imperial));

    print(localeLength(
        3.toMetre(LengthUnit.kilometre), UnitSystem.international));
    print(localeLength(3.toMetre(LengthUnit.kilometre), UnitSystem.us));
    print(localeLength(3.toMetre(LengthUnit.kilometre), UnitSystem.imperial));

    print(localeVolume(1, UnitSystem.international));
    print(localeVolume(3, UnitSystem.us));
    print(localeVolume(1, UnitSystem.imperial));
    print('');
  }
}
