import 'package:test/test.dart';
import 'package:international_system_of_units/international_system_of_units.dart';

void main() {
  group('kilograms to ', () {
    test('micrograms', () {
      final value = 1.toMicrogram;
      expect(value, 1e+9);
    });

    test('milligrams', () {
      final value = 1.toMilligram;
      expect(value, 1e+6);
    });

    test('grams', () {
      final value = 1.toGram;
      expect(value, 1000);
    });

    test('tonnes', () {
      final value = 1.toTonnes;
      expect(value, 0.001);
    });

    test('imperial tons', () {
      final value = 1.toImperialTon;
      expect(value, 0.000984207);
    });

    test('us tons', () {
      final value = 1.toUSTon;
      expect(value, 0.00110231);
    });

    test('stone', () {
      final value = 1.toStone;
      expect(value, 0.157473);
    });

    test('pound', () {
      final value = 1.toPound;
      expect(value, 2.20462);
    });

    test('ounce', () {
      final value = 1.toOunce;
      expect(value, 35.274);
    });
  });
}
