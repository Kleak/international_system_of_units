import 'package:international_system_of_units/international_system_of_units.dart';

num toUsGallonPerMile(num litrePerMetre) =>
    litrePerMetre.toUSLiquidGallon.toMetre(LengthUnit.mile);

num toImperialGallonPerMile(num litrePerMetre) =>
    litrePerMetre.toImperialGallon.toMetre(LengthUnit.mile);

num toMilePerUsGallon(num metrePerLitre) =>
    metrePerLitre.toMile.toLitre(VolumeUnit.usLiquidGallon);

num toMilePerImperialGallon(num metrePerLitre) =>
    metrePerLitre.toMile.toLitre(VolumeUnit.imperialGallons);
