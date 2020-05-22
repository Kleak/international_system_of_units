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

  test('square centimeters to square meters', () {
    final value = 1.toSquareMeters(AreaUnit.squareCentimeters);
    expect(value, 0.0001);
  });

  test('square kilometers to square meters', () {
    final value = 1.toSquareMeters(AreaUnit.squareKilometers);
    expect(value, 1000000);
  });

  test('square miles to square meters', () {
    final value = 1.toSquareMeters(AreaUnit.squareMiles);
    expect(value, 2.59e+6);
  });

  test('square yard to square meters', () {
    final value = 1.toSquareMeters(AreaUnit.squareYard);
    expect(value, 0.8361204013377926);
  });

  test('square foot to square meters', () {
    final value = 1.toSquareMeters(AreaUnit.squareFoot);
    expect(value, 0.0929022668153103);
  });

  test('square inch to square meters', () {
    final value = 1.toSquareMeters(AreaUnit.squareInches);
    expect(value, 0.0006451612903225806);
  });

  test('hectare to square meters', () {
    final value = 1.toSquareMeters(AreaUnit.hectare);
    expect(value, 10000);
  });

  test('acre to square meters', () {
    final value = 1.toSquareMeters(AreaUnit.acre);
    expect(value, 4046.86);
  });
}
