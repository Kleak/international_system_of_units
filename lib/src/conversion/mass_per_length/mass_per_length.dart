import 'package:international_system_of_units/src/conversion/length/international_system.dart';
import 'package:international_system_of_units/src/conversion/mass/international_system.dart';

extension ISMassPerLength on num {
  num get toGramPerMile => toMeter(LengthUnit.mile).toGram;
  num get toGramPerKilometer => toMeter(LengthUnit.kilometer).toGram;

  num toGramPerMeter(MassPerLengthUnit unit) {
    switch (unit) {
      case MassPerLengthUnit.gramPerMeter:
        return toKilogram(MassUnit.gram);
      case MassPerLengthUnit.gramPerMile:
        return toKilogram(MassUnit.gram).toMile;
      case MassPerLengthUnit.kilogramPerKilometer:
        return toKilometer;
      default:
        return this;
    }
  }
}

enum MassPerLengthUnit {
  gramPerMeter,
  kilogramPerMeter,
  gramPerMile,
  kilogramPerKilometer,
}
