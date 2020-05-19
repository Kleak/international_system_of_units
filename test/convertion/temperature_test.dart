import 'package:test/test.dart';
import 'package:international_system_of_units/international_system_of_units.dart';

void main() {
  group('kelvin to ', () {
    test('celsius', () {
      final value = 1.toCelsius;
      expect(value, -272.15);
    });

    test('fahrenheit', () {
      final value = 1.toFahrenheit;
      expect(value, -457.87);
    });

    test('rankine', () {
      final value = 1.toRankine;
      expect(value, 1.8);
    });

    test('romer', () {
      final value = 1.toRomer;
      expect(value, -135.37875);
    });
  });
}
