import 'package:international_system_of_units/international_system_of_units.dart';

void main(List<String> arguments) {
  final litrePer100Kilometre = 4;
  final litrePerKilometre = litrePer100Kilometre / 100;
  print(localeVolumeByLength(litrePerKilometre, UnitSystem.international));
  print(localeVolumeByLength(litrePerKilometre, UnitSystem.us));
  print(localeVolumeByLength(litrePerKilometre, UnitSystem.imperial));
  final kilometrePerLitre = 1 / litrePerKilometre;
  print(localeLengthByVolume(kilometrePerLitre, UnitSystem.international));
  print(localeLengthByVolume(kilometrePerLitre, UnitSystem.us));
  print(localeLengthByVolume(kilometrePerLitre, UnitSystem.imperial));

  print(
      localeLength(3.toMetre(LengthUnit.kilometre), UnitSystem.international));
  print(localeLength(3.toMetre(LengthUnit.kilometre), UnitSystem.us));
  print(localeLength(3.toMetre(LengthUnit.kilometre), UnitSystem.imperial));

  print(localeVolume(1, UnitSystem.international));
  print(localeVolume(3, UnitSystem.us));
  print(localeVolume(1, UnitSystem.imperial));
}
