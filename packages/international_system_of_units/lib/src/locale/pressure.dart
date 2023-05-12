import 'package:international_system_of_units/src/conversion/pressure/international_system.dart';
import 'package:international_system_of_units/src/locale/length.dart';
import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/locale/mass.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:intl/intl.dart';

class LocalePressure extends LocaleBase<PressureUnit> {
  final String _localeName;
  final LocaleMass? _mass;
  final LocaleLength? _length;

  LocalePressure(
      NumberFormat numberFormat, this._localeName, this._mass, this._length)
      : super(numberFormat);

  @override
  num localeNumberBase(num value, PressureUnit? unit) {
    switch (unit) {
      case PressureUnit.poundForcePerSquareInch:
        return value.toPoundForcePerSquareInch;
      case PressureUnit.bar:
        return value.toBar;
      case PressureUnit.pascal:
        return value;
      default:
        throw UnsupportedError('We currently do not support this combinaison');
    }
  }

  @override
  String localeUnit(
    num value,
    UnitSystem unitSystem,
    PressureUnit? unit, {
    bool shortUnit = true,
  }) {
    switch (unit) {
      case PressureUnit.pascal:
        return shortUnit ? 'Pa' : localePascals(value);
      case PressureUnit.bar:
        return shortUnit ? 'b' : localeBars(value);
      case PressureUnit.poundForcePerSquareInch:
        return shortUnit ? 'psi' : localePoundForcePerSquareInch(value);
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
    PressureUnit? toInternationalUnit = PressureUnit.pascal,
    PressureUnit? toEuUnit = PressureUnit.bar,
    PressureUnit? toImperialUnit = PressureUnit.poundForcePerSquareInch,
    PressureUnit? toUsUnit = PressureUnit.poundForcePerSquareInch,
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

  String localePascals(num value) => Intl.plural(
        value,
        name: 'localePascals',
        zero: 'pascal',
        one: 'pascal',
        other: 'pascals',
        args: [value],
        locale: _localeName,
      );

  String localeBars(num value) => Intl.plural(
        value,
        name: 'localeBars',
        zero: 'bar',
        one: 'bar',
        other: 'bars',
        args: [value],
        locale: _localeName,
      );

  String localePoundForcePerSquareInch(num value) {
    final pounds = _mass!.localePounds(value);
    final inches = _length!.localeInches(2);
    return _intlLocalePoundForcePerSquareInch(pounds, inches);
  }

  String _intlLocalePoundForcePerSquareInch(String pounds, String inches) =>
      Intl.message(
        '$pounds force per square $inches',
        name: '_intlLocalePoundForcePerSquareInch',
        args: [pounds, inches],
        locale: _localeName,
      );
}
