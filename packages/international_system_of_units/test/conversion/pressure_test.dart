import 'package:test/test.dart';
import 'package:international_system_of_units/international_system_of_units.dart';

void main() {
  group('pascals to ', () {
    test('bar', () {
      final value = 1.toBar;
      expect(value, 1e-5);
    });

    test('pound force per square inch', () {
      final value = 1.toPoundForcePerSquareInch;
      expect(value, 0.000145038);
    });
  });
}
