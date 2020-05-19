import 'package:international_system_of_units/international_system_of_units.dart';
import 'package:test/test.dart';

void testBase(
  void Function(String locale, UnitSystem) tests,
  Map<String, Map<UnitSystem, List<String>>> resultsByLocale,
) {
  for (final locale in resultsByLocale.keys) {
    group('localization $locale', () {
      for (final unitSystem in UnitSystem.values) {
        group('$unitSystem', () {
          tests(locale, unitSystem);
        });
      }
    });
  }
}
