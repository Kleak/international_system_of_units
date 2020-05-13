import 'package:international_system_of_units/src/conversion/length/international_system.dart';
import 'package:international_system_of_units/src/conversion/volume/international_system.dart';

@deprecated
num toUsGallonPerMile(num litrePerMetre) =>
    litrePerMetre.toUSLiquidGallon.toMeter(LengthUnit.mile);

@deprecated
num toImperialGallonPerMile(num litrePerMetre) =>
    litrePerMetre.toImperialGallon.toMeter(LengthUnit.mile);

@deprecated
num toMilePerUsGallon(num metrePerLitre) =>
    metrePerLitre.toMile.toLiter(VolumeUnit.usLiquidGallon);

@deprecated
num toMilePerImperialGallon(num metrePerLitre) =>
    metrePerLitre.toMile.toLiter(VolumeUnit.imperialGallons);
