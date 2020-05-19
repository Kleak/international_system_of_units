import 'package:test/test.dart';
import 'package:international_system_of_units/international_system_of_units.dart';

void main() {
  group('kilograms per meters to ', () {
    test('grams per meters', () {
      final value = 1.toGramPerMeter;
      expect(value, 1000);
    });

    test('grams per miles', () {
      final value = 1.toGramPerMile;
      expect(value, 1609340.0);
    });

    test('kilograms per kilometers', () {
      final value = 1.toKilogramPerKilometer;
      expect(value, 1000);
    });

    test('grams per kilometers', () {
      final value = 1.toGramPerKilometer;
      expect(value, 1000000);
    });
  });
}
