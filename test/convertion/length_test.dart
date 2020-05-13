import 'package:test/test.dart';
import 'package:international_system_of_units/international_system_of_units.dart';

void main() {
  test('meter to kilometre', () {
    final value = 1200.toKilometre;
    expect(value, 1.2);
  });
}
