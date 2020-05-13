import 'package:international_system_of_units/international_system_of_units.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart';

void main(List<String> arguments) async {
  for (final language in ['en_US', 'fr_FR', 'en_UK']) {
    print('load $language');
    final sIi18n =
        await InternationalSystemLocalizations.load(Locale.parse(language));
    Intl.defaultLocale = language;

    print(
      sIi18n.length.locale(
        0.toMetre(LengthUnit.metre),
        UnitSystem.international,
        toInternationalUnit: LengthUnit.metre,
        withUnit: true,
      ),
    );

    print(
      sIi18n.mass.locale(
        12000.toGram(MassUnit.kilogram),
        UnitSystem.imperial,
        toInternationalUnit: MassUnit.tonnes,
        toImperialUnit: MassUnit.imperialTon,
        toUsUnit: MassUnit.usTon,
        withUnit: true,
      ),
    );

    print(
      sIi18n.time.locale(
        24.toSecond(TimeUnit.hour),
        UnitSystem.imperial,
        toInternationalUnit: TimeUnit.hour,
        toImperialUnit: TimeUnit.hour,
        toUsUnit: TimeUnit.hour,
        withUnit: true,
      ),
    );

    // final litrePer100Kilometre = 4;
    // final litrePerKilometre = litrePer100Kilometre / 100;
    // print(sIi18n.localeVolumeByLength(
    //     litrePerKilometre, UnitSystem.international));
    // print(sIi18n.localeVolumeByLength(litrePerKilometre, UnitSystem.us));
    // print(sIi18n.localeVolumeByLength(litrePerKilometre, UnitSystem.imperial));
    // final kilometrePerLitre = 1 / litrePerKilometre;
    // print(sIi18n.localeLengthByVolume(
    //     kilometrePerLitre, UnitSystem.international));
    // print(sIi18n.localeLengthByVolume(kilometrePerLitre, UnitSystem.us));
    // print(sIi18n.localeLengthByVolume(kilometrePerLitre, UnitSystem.imperial));
    // print(sIi18n.localeLength(
    //     3.toMetre(LengthUnit.kilometre), UnitSystem.international));
    // print(sIi18n.localeLength(3.toMetre(LengthUnit.kilometre), UnitSystem.us));
    // print(sIi18n.localeLength(
    //     3.toMetre(LengthUnit.kilometre), UnitSystem.imperial));
    // print(sIi18n.localeVolume(1, UnitSystem.international));
    // print(sIi18n.localeVolume(3, UnitSystem.us));
    // print(sIi18n.localeVolume(1, UnitSystem.imperial));
  }
}
