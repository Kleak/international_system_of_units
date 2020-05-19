import 'package:international_system_of_units/international_system_of_units.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart';

void main(List<String> arguments) async {
  final language = 'en_US';
  final sIi18n =
      await InternationalSystemLocalizations.load(Locale.parse(language));
  Intl.defaultLocale = language;

  //  Temperature
  print(0.toCelsius);
  print(0.toFahrenheit);
  print(0.toKelvin(TemperatureUnit.celsius));
  print(0.toRankine);
  print(1.toKelvin(TemperatureUnit.romer));

  sIi18n.fuelEconomy.locale(
    4.toLiterPerMeter(VolumePerLengthUnit.literPer100Kilometer),
    UnitSystem.eu,
    shortUnit: true,
    toEuUnit: FuelEconomyUnit.litersPer100Kilometers,
    toUsUnit: FuelEconomyUnit.milesPerUsGallons,
    toImperialUnit: FuelEconomyUnit.milesPerImperialGallons,
  );
}
