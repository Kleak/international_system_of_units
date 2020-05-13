import 'package:international_system_of_units/international_system_of_units.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart';
import 'package:test/test.dart';

void main() {
  Intl.defaultLocale = 'fr_FR';
  InternationalSystemLocalizations internationalSystemLocalizations;

  setUp(() async {
    internationalSystemLocalizations =
        await InternationalSystemLocalizations.load(
            Locale.parse(Intl.defaultLocale));
  });

  group('localization ${Intl.defaultLocale}', () {
    group('international', () {
      final unitSystem = UnitSystem.international;

      test('default', () {
        final value =
            internationalSystemLocalizations.length.locale(1200, unitSystem);
        expect(value, '1,2 km');
      });
    });
  });
}
