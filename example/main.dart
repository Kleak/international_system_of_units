import 'package:international_system_of_units/international_system_of_units.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart';

void main(List<String> arguments) async {
  for (final language in ['en_US', 'fr_FR', 'en_UK']) {
    print('load $language');
    final sIi18n =
        await InternationalSystemLocalizations.load(Locale.parse(language));
    Intl.defaultLocale = language;

    print(sIi18n.lengthPerVolume
        .locale(12.toMeter(LengthUnit.kilometer), UnitSystem.international));
  }
}
