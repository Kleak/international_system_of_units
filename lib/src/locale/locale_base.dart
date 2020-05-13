import 'package:international_system_of_units/src/unit_system.dart';
import 'package:intl/intl.dart';

abstract class LocaleBase<Unit> {
  final NumberFormat _numberFormat;

  LocaleBase(this._numberFormat);

  Unit unit(
    UnitSystem unitSystem, {
    Unit toInternationalUnit,
    Unit toImperialUnit,
    Unit toUsUnit,
  }) {
    switch (unitSystem) {
      case UnitSystem.imperial:
        return toImperialUnit;
      case UnitSystem.us:
        return toUsUnit;
      default:
        return toInternationalUnit;
    }
  }

  String localeUnit(
    final num value,
    UnitSystem unitSystem,
    Unit unit,
  );

  num localeNumber(
    num value,
    UnitSystem unitSystem, {
    Unit toInternationalUnit,
    Unit toImperialUnit,
    Unit toUsUnit,
  });

  String locale(
    num value,
    UnitSystem unitSystem, {
    bool withUnit = true,
    NumberFormat customNumberFormat,
    Unit toInternationalUnit,
    Unit toImperialUnit,
    Unit toUsUnit,
  }) {
    final _number = localeNumber(
      value,
      unitSystem,
      toInternationalUnit: toInternationalUnit,
      toImperialUnit: toImperialUnit,
      toUsUnit: toUsUnit,
    );
    final _unit = unit(
      unitSystem,
      toInternationalUnit: toInternationalUnit,
      toImperialUnit: toImperialUnit,
      toUsUnit: toUsUnit,
    );
    final sb =
        StringBuffer((customNumberFormat ?? _numberFormat).format(_number));
    if (withUnit) {
      sb.write(' ${localeUnit(_number, unitSystem, _unit)}');
    }
    return sb.toString();
  }
}
