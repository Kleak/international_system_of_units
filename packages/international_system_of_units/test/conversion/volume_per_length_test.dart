import 'package:test/test.dart';
import 'package:international_system_of_units/international_system_of_units.dart';

void main() {
  group('liters per meters to ', () {
    test('liters per kilometers', () {
      final value = 1.toLiterPerKilometer;
      expect(value, 1000);
    });

    test('us gallons per miles', () {
      final value = 1.toUsGallonPerMile;
      expect(value, 425.14256648);
    });

    test('imperial gallons per miles', () {
      final value = 1.toImperialGallonPerMile;
      expect(value, 354.00491045999996);
    });

    test('liters per 100 kilometers', () {
      final value = 1.toLiterPer100Kilometer;
      expect(value, 100000);
    });
  });
}
