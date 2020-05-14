import 'package:international_system_of_units/src/conversion/mass_per_length/mass_per_length.dart';
import 'package:international_system_of_units/src/locale/length.dart';
import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/locale/mass.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:intl/intl.dart';

class LocaleMassPerLength extends LocaleBase<MassPerLengthUnit> {
  final String _localeName;
  final LocaleLength _length;
  final LocaleMass _mass;

  LocaleMassPerLength(
      NumberFormat numberFormat, this._localeName, this._length, this._mass)
      : super(numberFormat);

  @override
  num localeNumberBase(num value, MassPerLengthUnit unit) {
    // TODO: implement localeNumberBase
    throw UnimplementedError();
  }

  @override
  String localeUnit(num value, UnitSystem unitSystem, MassPerLengthUnit unit,
      {bool shortUnit = true}) {
    // TODO: implement localeUnit
    throw UnimplementedError();
  }
}
