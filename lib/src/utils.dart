import 'package:international_system_of_units/international_system_of_units.dart';

num toUsGallonPerMile(num litrePerKilometre) =>
    litrePerKilometre.toUSLiquidGallon.toKilometre.toMetre(LengthUnit.mile);

num toImperialGallonPerMile(num litrePerKilometre) =>
    litrePerKilometre.toImperialGallon.toKilometre.toMetre(LengthUnit.mile);

num toMilePerUsGallon(num kilometrePerLitre) => kilometrePerLitre
    .toMetre(LengthUnit.kilometre)
    .toMile
    .toLitre(VolumeUnit.usLiquidGallon);

num toMilePerImperialGallon(num kilometrePerLitre) => kilometrePerLitre
    .toMetre(LengthUnit.kilometre)
    .toMile
    .toLitre(VolumeUnit.imperialGallons);
