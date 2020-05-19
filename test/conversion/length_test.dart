import 'package:test/test.dart';
import 'package:international_system_of_units/international_system_of_units.dart';

void main() {
  group('meters to ', () {
    test('nanometers', () {
      final value = 1.toNanometer;
      expect(value, 1e+9);
    });
    test('micrometers', () {
      final value = 1.toMicrometer;
      expect(value, 1e+6);
    });

    test('centimeters', () {
      final value = 1.toCentimeter;
      expect(value, 100);
    });

    test('kilometres', () {
      final value = 1200.toKilometer;
      expect(value, 1.2);
    });

    test('inches', () {
      final value = 1.toInch;
      expect(value, 39.3701);
    });

    test('foot', () {
      final value = 1.toFoot;
      expect(value, 3.28084);
    });

    test('yard', () {
      final value = 1.toYard;
      expect(value, 1.09361);
    });

    test('miles', () {
      final value = 1.toMile;
      expect(value, 0.000621371);
    });
  });
}
