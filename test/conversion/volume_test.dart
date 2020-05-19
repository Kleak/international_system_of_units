import 'package:test/test.dart';
import 'package:international_system_of_units/international_system_of_units.dart';

void main() {
  group('liters to ', () {
    test('us liquid gallons', () {
      final value = 1.toUSLiquidGallon;
      expect(value, 0.264172);
    });

    test('us liquid quart', () {
      final value = 1.toUSLiquidQuart;
      expect(value, 1.05669);
    });

    test('us liquid pint', () {
      final value = 1.toUSLiquidPint;
      expect(value, 2.11338);
    });

    test('us liquid cup', () {
      final value = 1.toUSLegalCup;
      expect(value, 4.16667);
    });

    test('fluid ounce', () {
      final value = 1.toUSFluidOunces;
      expect(value, 33.814);
    });

    test('us talespoon', () {
      final value = 1.toUSTablespoon;
      expect(value, 67.628);
    });

    test('us teaspoon', () {
      final value = 1.toUSTeaspoon;
      expect(value, 202.884);
    });

    test('cubic meters', () {
      final value = 1.toCubicMeters;
      expect(value, 0.001);
    });

    test('milliliters', () {
      final value = 1.toMilliliters;
      expect(value, 1000);
    });

    test('imperial gallons', () {
      final value = 1.toImperialGallon;
      expect(value, 0.219969);
    });

    test('imperial quart', () {
      final value = 1.toImperialQuart;
      expect(value, 0.879877);
    });

    test('imperial pint', () {
      final value = 1.toImperialPint;
      expect(value, 1.75975);
    });

    test('imperial cup', () {
      final value = 1.toImperialCup;
      expect(value, 3.51951);
    });

    test('imperial fluid ounce', () {
      final value = 1.toImperialFluidOunces;
      expect(value, 35.1951);
    });

    test('imperial tablespoon', () {
      final value = 1.toImperialTablespoon;
      expect(value, 56.3121);
    });

    test('imperial teaspoon', () {
      final value = 1.toImperialTeaspoon;
      expect(value, 168.936);
    });

    test('cubic foot', () {
      final value = 1.toCubicFoot;
      expect(value, 0.0353147);
    });

    test('cubic inch', () {
      final value = 1.toCubicInch;
      expect(value, 61.0237);
    });
  });
}
