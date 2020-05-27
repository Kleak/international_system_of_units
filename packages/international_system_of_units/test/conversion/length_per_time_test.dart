import 'package:test/test.dart';
import 'package:international_system_of_units/international_system_of_units.dart';

void main() {
  group('meters per seconds to ', () {
    test('knot', () {
      final value = 1.toKnot;
      expect(value, 1.9438461717893492);
    });

    test('kilometers per hours', () {
      final value = 1.toKilometerPerHour;
      expect(value, 3.6);
    });

    test('miles per hours', () {
      final value = 1.toMilePerHour;
      expect(value, 2.2369356000000002);
    });
  });
}
