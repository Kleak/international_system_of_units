import 'package:test/test.dart';
import 'package:international_system_of_units/international_system_of_units.dart';

void main() {
  group('seconds to ', () {
    test('nanoseconds', () {
      final value = 1.toNanosecond;
      expect(value, 1e+9);
    });

    test('microseconds', () {
      final value = 1.toMicrosecond;
      expect(value, 1e+6);
    });

    test('milliseconds', () {
      final value = 1.toMillisecond;
      expect(value, 1000);
    });

    test('minutes', () {
      final value = 1.toMinute;
      expect(value, 0.0166667);
    });

    test('hours', () {
      final value = 1.toHour;
      expect(value, 0.000277778);
    });

    test('days', () {
      final value = 1.toDay;
      expect(value, 1.1574e-5);
    });

    test('weeks', () {
      final value = 1.toWeek;
      expect(value, 1.6534e-6);
    });

    test('months', () {
      final value = 1.toMonth;
      expect(value, 3.8052e-7);
    });

    test('year', () {
      final value = 1.toCalendarYear;
      expect(value, 3.171e-8);
    });

    test('decade', () {
      final value = 1.toDecade;
      expect(value, 3.171e-9);
    });

    test('century', () {
      final value = 1.toCentury;
      expect(value, 3.171e-10);
    });
  });
}
