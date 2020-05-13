import 'package:international_system_of_units/src/conversion/length/international_system.dart';
import 'package:international_system_of_units/src/conversion/mass/international_system.dart';

extension ISMassPerLength on num {
  num get toKilogramPerMeter => toKilogram;
  num get toGramPerMile => toMeter(LengthUnit.mile);

  num toMeterPerLiter(MassPerLengthUnit unit) {
    //  TODO add conversion
    switch (unit) {
      default:
        return this;
    }
  }
}

enum MassPerLengthUnit {
  gramPerMeter,
  kilogramPerMeter,
  gramPerMile,
}
