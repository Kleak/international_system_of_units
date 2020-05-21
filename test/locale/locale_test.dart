import 'package:international_system_of_units/international_system_of_units.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart';
import 'package:test/test.dart';

import 'base.dart';
import 'locales/expected_result_by_locale.dart';

void main() {
  testBase((locale, unitSystem) {
    InternationalSystemLocalizations internationalSystemLocalizations;

    setUp(() async {
      internationalSystemLocalizations =
          await InternationalSystemLocalizations.load(Locale.parse(locale));
      Intl.defaultLocale = locale;
    });

    group('length', () {
      final lengthResult =
          expectedResultsByLocale[locale][unitSystem]['length'];

      test('default', () {
        final value =
            internationalSystemLocalizations.length.locale(1200, unitSystem);
        expect(value, lengthResult.elementAt(0));
      });

      test('short unit false', () {
        final value = internationalSystemLocalizations.length
            .locale(1200, unitSystem, shortUnit: false);
        expect(value, lengthResult.elementAt(1));
      });
    });

    group('mass', () {
      final massResult = expectedResultsByLocale[locale][unitSystem]['mass'];

      test('default', () {
        final value =
            internationalSystemLocalizations.mass.locale(100, unitSystem);
        expect(value, massResult.elementAt(0));
      });

      test('short unit false', () {
        final value = internationalSystemLocalizations.mass
            .locale(100, unitSystem, shortUnit: false);
        expect(value, massResult.elementAt(1));
      });
    });

    group('fuel economy', () {
      final fuelEconomyResult =
          expectedResultsByLocale[locale][unitSystem]['fuel_economy'];

      test('default', () {
        final value = internationalSystemLocalizations.fuelEconomy.locale(
            3.toLiterPerMeter(VolumePerLengthUnit.literPer100Kilometer),
            unitSystem);
        expect(value, fuelEconomyResult.elementAt(0));
      });

      test('short unit false', () {
        final value = internationalSystemLocalizations.fuelEconomy.locale(
            3.toLiterPerMeter(VolumePerLengthUnit.literPer100Kilometer),
            unitSystem,
            shortUnit: false);
        expect(value, fuelEconomyResult.elementAt(1));
      });
    });

    group('pressure', () {
      final pressureResult =
          expectedResultsByLocale[locale][unitSystem]['pressure'];

      test('default', () {
        final value =
            internationalSystemLocalizations.pressure.locale(10000, unitSystem);
        expect(value, pressureResult.elementAt(0));
      });

      test('short unit false', () {
        final value = internationalSystemLocalizations.pressure.locale(
          10000,
          unitSystem,
          shortUnit: false,
        );
        expect(value, pressureResult.elementAt(1));
      });
    });

    group('temperature', () {
      final temperatureResult =
          expectedResultsByLocale[locale][unitSystem]['temperature'];

      test('default', () {
        final value = internationalSystemLocalizations.temperature
            .locale(250, unitSystem);
        expect(value, temperatureResult.elementAt(0));
      });

      test('short unit false', () {
        final value = internationalSystemLocalizations.temperature
            .locale(250, unitSystem, shortUnit: false);
        expect(value, temperatureResult.elementAt(1));
      });
    });

    group('time', () {
      final timeResult = expectedResultsByLocale[locale][unitSystem]['time'];

      test('default', () {
        final value =
            internationalSystemLocalizations.time.locale(250, unitSystem);
        expect(value, timeResult.elementAt(0));
      });

      test('short unit false', () {
        final value = internationalSystemLocalizations.time
            .locale(250, unitSystem, shortUnit: false);
        expect(value, timeResult.elementAt(1));
      });
    });

    group('volume', () {
      final volumeResult =
          expectedResultsByLocale[locale][unitSystem]['volume'];

      test('default', () {
        final value =
            internationalSystemLocalizations.volume.locale(250, unitSystem);
        expect(value, volumeResult.elementAt(0));
      });

      test('short unit false', () {
        final value = internationalSystemLocalizations.volume
            .locale(250, unitSystem, shortUnit: false);
        expect(value, volumeResult.elementAt(1));
      });
    });
  }, expectedResultsByLocale);
}
