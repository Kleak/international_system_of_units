import 'package:international_system_of_units/international_system_of_units.dart';
import 'package:test/test.dart';

void main(InternationalSystemLocalizations intl) {
  group('length', () {
    group('default', () {
      group('us unit system', () {
        test('zero', () {
          final inches =
              intl.length.locale(0.toMeter(LengthUnit.mile), UnitSystem.us);
          expect(inches, '0 mi');
        });

        test('one', () {
          final inches =
              intl.length.locale(1.toMeter(LengthUnit.mile), UnitSystem.us);
          expect(inches, '1 mi');
        });

        test('more', () {
          final inches =
              intl.length.locale(12.toMeter(LengthUnit.mile), UnitSystem.us);
          expect(inches, '12 mi');
        });

        test('floating number', () {
          final inches =
              intl.length.locale(12.5.toMeter(LengthUnit.mile), UnitSystem.us);
          expect(inches, '12.5 mi');
        });
      });
    });
  });
}
