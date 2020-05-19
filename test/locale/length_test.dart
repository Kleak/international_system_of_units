import 'package:international_system_of_units/international_system_of_units.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart';
import 'package:test/test.dart';

import 'base.dart';

void main() {
  testBase((locale, unitSystem) {
    InternationalSystemLocalizations internationalSystemLocalizations;

    setUpAll(() async {
      internationalSystemLocalizations =
          await InternationalSystemLocalizations.load(Locale.parse(locale));
      Intl.defaultLocale = locale;
    });

    test('default', () {
      final value =
          internationalSystemLocalizations.length.locale(1200, unitSystem);
      expect(value, resultsByLocale[locale][unitSystem].elementAt(0));
    });

    test('short unit false', () {
      final value = internationalSystemLocalizations.length
          .locale(1200, unitSystem, shortUnit: false);
      expect(value, resultsByLocale[locale][unitSystem].elementAt(1));
    });
  }, resultsByLocale);
}

const resultsByLocale = <String, Map<UnitSystem, List<String>>>{
  'en_US': {
    UnitSystem.international: [
      '1.2 km',
      '1.2 kilometers',
    ],
    UnitSystem.eu: [
      '1.2 km',
      '1.2 kilometers',
    ],
    UnitSystem.us: [
      '0.746 mi',
      '0.746 miles',
    ],
    UnitSystem.imperial: [
      '0.746 mi',
      '0.746 miles',
    ],
  },
};
