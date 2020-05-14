import 'package:international_system_of_units/src/conversion/length_per_time/length_per_time.dart';
import 'package:international_system_of_units/src/locale/length.dart';
import 'package:international_system_of_units/src/locale/locale_base.dart';
import 'package:international_system_of_units/src/locale/time.dart';
import 'package:international_system_of_units/src/unit_system.dart';
import 'package:intl/intl.dart';

class LocaleLengthPerTime extends LocaleBase<LengthPerTimeUnit> {
  final String _localeName;
  final LocaleLength _length;
  final LocaleTime _time;

  LocaleLengthPerTime(
      NumberFormat numberFormat, this._localeName, this._length, this._time)
      : super(numberFormat);

  @override
  num localeNumberBase(num value, LengthPerTimeUnit unit) {
    // TODO: implement localeNumberBase
    throw UnimplementedError();
  }

  @override
  String localeUnit(num value, UnitSystem unitSystem, LengthPerTimeUnit unit,
      {bool shortUnit = true}) {
    // TODO: implement localeUnit
    throw UnimplementedError();
  }
}
