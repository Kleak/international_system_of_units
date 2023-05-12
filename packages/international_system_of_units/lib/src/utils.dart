import 'package:international_system_of_units/src/conversion/length/international_system.dart';
import 'package:international_system_of_units/src/conversion/volume/international_system.dart';

@Deprecated("This method will be soon removed please switch to another implementation")
num toUsGallonPerMile(num litrePerMetre) =>
    litrePerMetre.toUSLiquidGallon.toMeter(LengthUnit.mile);

@Deprecated("This method will be soon removed please switch to another implementation")
num toImperialGallonPerMile(num litrePerMetre) =>
    litrePerMetre.toImperialGallon.toMeter(LengthUnit.mile);

@Deprecated("This method will be soon removed please switch to another implementation")
num toMilePerUsGallon(num metrePerLitre) =>
    metrePerLitre.toMile.toLiter(VolumeUnit.usLiquidGallon);

@Deprecated("This method will be soon removed please switch to another implementation")
num toMilePerImperialGallon(num metrePerLitre) =>
    metrePerLitre.toMile.toLiter(VolumeUnit.imperialGallons);
