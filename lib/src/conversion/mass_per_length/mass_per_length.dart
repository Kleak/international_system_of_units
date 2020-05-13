import 'package:international_system_of_units/src/conversion/length/international_system.dart';
import 'package:international_system_of_units/src/conversion/mass/international_system.dart';

extension ISMassPerLength on num {
  num get toKilogramPerMeter => toKilogram;
  num get toGramPerMile => toMeter(LengthUnit.mile);

  num toGramPerMeter(MassPerLengthUnit unit) {
    switch (unit) {
      case MassPerLengthUnit.gramPerMile:
        return toMile;
      case MassPerLengthUnit.kilogramPerMeter:
        return toGram(MassUnit.kilogram);
      case MassPerLengthUnit.kilogramPerKilometer:
        return toGram(MassUnit.kilogram).toKilometer;
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
