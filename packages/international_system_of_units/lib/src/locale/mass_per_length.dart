import 'package:international_system_of_units/src/conversion/mass_per_length/mass_per_length.dart';
import 'package:international_system_of_units/src/locale/length.dart';
import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/locale/mass.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:intl/intl.dart';

class LocaleMassPerLength extends LocaleBase<MassPerLengthUnit> {
  final String _localeName;
  final LocaleLength? _length;
  final LocaleMass? _mass;

  LocaleMassPerLength(
      NumberFormat numberFormat, this._localeName, this._length, this._mass)
      : super(numberFormat);

  @override
  num localeNumberBase(num value, MassPerLengthUnit? unit) {
    switch (unit) {
      case MassPerLengthUnit.gramPerMeter:
        return value.toGramPerMeter;
      case MassPerLengthUnit.gramPerMile:
        return value.toGramPerMile;
      case MassPerLengthUnit.kilogramPerKilometer:
        return value.toKilogramPerKilometer;
      case MassPerLengthUnit.gramPerKilometer:
        return value.toGramPerKilometer;
      case MassPerLengthUnit.kilogramPerMeter:
        return value;
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
  }

  @override
  String localeUnit(
    num value,
    UnitSystem unitSystem,
    MassPerLengthUnit? unit, {
    bool shortUnit = true,
  }) {
    switch (unit) {
      case MassPerLengthUnit.gramPerMeter:
        return shortUnit ? 'g/m' : localeGramsPerMeters(value);
      case MassPerLengthUnit.gramPerMile:
        return shortUnit ? 'g/m' : localeGramsPerMiles(value);
      case MassPerLengthUnit.kilogramPerKilometer:
        return shortUnit ? 'kg/km' : localeKilogramsPerKilometers(value);
      case MassPerLengthUnit.kilogramPerMeter:
        return shortUnit ? 'kg/m' : localeKilogramsPerMeters(value);
      case MassPerLengthUnit.gramPerKilometer:
        return shortUnit ? 'g/km' : localeGramsPerKilometers(value);
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
  }

  @override
  String locale(
    num value,
    UnitSystem unitSystem, {
    bool withUnit = true,
    bool shortUnit = true,
    NumberFormat? customNumberFormat,
    MassPerLengthUnit? toInternationalUnit = MassPerLengthUnit.kilogramPerMeter,
    MassPerLengthUnit? toImperialUnit = MassPerLengthUnit.gramPerMile,
    MassPerLengthUnit? toUsUnit = MassPerLengthUnit.gramPerMile,
    MassPerLengthUnit? toEuUnit = MassPerLengthUnit.gramPerKilometer,
  }) =>
      super.locale(
        value,
        unitSystem,
        withUnit: withUnit,
        shortUnit: shortUnit,
        customNumberFormat: customNumberFormat,
        toUsUnit: toUsUnit,
        toEuUnit: toEuUnit,
        toImperialUnit: toImperialUnit,
        toInternationalUnit: toInternationalUnit,
      );

  String localeGramsPerMeters(num value) {
    final grams = _mass!.localeGrams(value);
    final meters = _length!.localeMeters(2);
    return _intlLocaleGramsPerMeters(grams, meters);
  }

  String localeGramsPerMiles(num value) {
    final grams = _mass!.localeGrams(value);
    final miles = _length!.localeMiles(2);
    return _intlLocaleGramsPerMiles(grams, miles);
  }

  String localeKilogramsPerKilometers(num value) {
    final kilograms = _mass!.localeKilograms(value);
    final kilometers = _length!.localeKilometers(2);
    return _intlLocaleKilogramsPerKilometers(kilograms, kilometers);
  }

  String localeKilogramsPerMeters(num value) {
    final kilograms = _mass!.localeKilograms(value);
    final meters = _length!.localeMeters(2);
    return _intlLocaleKilogramsPerMeters(kilograms, meters);
  }

  String localeGramsPerKilometers(num value) {
    final grams = _mass!.localeGrams(value);
    final kilometers = _length!.localeKilometers(2);
    return _intlLocaleGramsPerKilometers(grams, kilometers);
  }

  String _intlLocaleGramsPerMeters(String grams, String meters) => Intl.message(
        '$grams per $meters',
        name: '_intlLocaleGramsPerMeters',
        args: [grams, meters],
        locale: _localeName,
      );

  String _intlLocaleGramsPerMiles(String grams, String miles) => Intl.message(
        '$grams per $miles',
        name: '_intlLocaleGramsPerMiles',
        args: [grams, miles],
        locale: _localeName,
      );

  String _intlLocaleKilogramsPerKilometers(
          String kilograms, String kilometers) =>
      Intl.message(
        '$kilograms per $kilometers',
        name: '_intlLocaleKilogramsPerKilometers',
        args: [kilograms, kilometers],
        locale: _localeName,
      );

  String _intlLocaleKilogramsPerMeters(String kilograms, String meters) =>
      Intl.message(
        '$kilograms per $meters',
        name: '_intlLocaleKilogramsPerMeters',
        args: [kilograms, meters],
        locale: _localeName,
      );

  String _intlLocaleGramsPerKilometers(String grams, String kilometers) =>
      Intl.message(
        '$grams per $kilometers',
        name: '_intlLocaleGramsPerKilometers',
        args: [grams, kilometers],
        locale: _localeName,
      );
}
