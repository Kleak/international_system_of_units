import 'package:international_system_of_units/international_system_of_units.dart';

@deprecated
num toUsGallonPerMile(num litrePerMetre) =>
    litrePerMetre.toUSLiquidGallon.toMetre(LengthUnit.mile);

@deprecated
num toImperialGallonPerMile(num litrePerMetre) =>
    litrePerMetre.toImperialGallon.toMetre(LengthUnit.mile);

@deprecated
num toMilePerUsGallon(num metrePerLitre) =>
    metrePerLitre.toMile.toLiter(VolumeUnit.usLiquidGallon);

@deprecated
num toMilePerImperialGallon(num metrePerLitre) =>
    metrePerLitre.toMile.toLiter(VolumeUnit.imperialGallons);
