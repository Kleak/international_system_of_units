import 'package:test/test.dart';
import 'package:international_system_of_units/international_system_of_units.dart';

void main() {
  group('meters per liters to ', () {
    test('kilometers per liters', () {
      final value = 1.toKilometerPerLiter;
      expect(value, 0.001);
    });

    test('miles per us gallons', () {
      final value = 1.toMilePerUsGallon;
      expect(value, 0.00235214399711);
    });

    test('miles per imperial gallons', () {
      final value = 1.toMilePerImperialGallon;
      expect(value, 0.00282480848939);
    });

    test('liters per meters', () {
      final value = 12.inverseLengthPerVolume;
      expect(value, 0.08333333333333333);
    });
  });
}
