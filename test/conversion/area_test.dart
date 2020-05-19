import 'package:test/test.dart';
import 'package:international_system_of_units/international_system_of_units.dart';

void main() {
  group('square meters to ', () {
    test('square centimeters', () {
      final value = 1.toSquareCentimeters;
      expect(value, 10000);
    });

    test('square kilometers', () {
      final value = 1.toSquareKilometers;
      expect(value, 1e-6);
    });

    test('square miles', () {
      final value = 1.toSquareMiles;
      expect(value, 3.861003861003861e-7);
    });

    test('square yard', () {
      final value = 1.toSquareYard;
      expect(value, 1.19599);
    });

    test('square foot', () {
      final value = 1.toSquareFoot;
      expect(value, 10.7639);
    });

    test('square inch', () {
      final value = 1.toSquareInches;
      expect(value, 1550);
    });

    test('hectare', () {
      final value = 1.toHectare;
      expect(value, 1e-4);
    });

    test('acre', () {
      final value = 1.toAcre;
      expect(value, 0.000247105);
    });
  });
}
