import 'package:international_system_of_units/international_system_of_units.dart';
import 'package:international_system_of_units/src/conversion/length/international_system.dart';
import 'package:international_system_of_units/src/conversion/mass/international_system.dart';

extension ISMassPerLength on num {
  num get toGramPerMeter => toGram;
  num get toGramPerMile => toMeter(LengthUnit.mile).toGram;
  num get toKilogramPerKilometer => toMeter(LengthUnit.kilometer);
  num get toGramPerKilometer => toMeter(LengthUnit.kilometer).toGram;

  num toKilogramPerMeter(MassPerLengthUnit unit) {
    switch (unit) {
      case MassPerLengthUnit.gramPerMeter:
        return toGram;
      case MassPerLengthUnit.gramPerMile:
        return toGram.toMeter(LengthUnit.mile);
      case MassPerLengthUnit.gramPerKilometer:
        return toGram.toMeter(LengthUnit.kilometer);
      case MassPerLengthUnit.kilogramPerKilometer:
        return toKilometer;
      default:
        return this;
    }
  }
}

enum MassPerLengthUnit {
  gramPerMeter,
  gramPerKilometer,
  kilogramPerMeter,
  gramPerMile,
  kilogramPerKilometer,
}
