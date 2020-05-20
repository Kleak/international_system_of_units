import 'package:international_system_of_units/international_system_of_units.dart';
import 'package:international_system_of_units/src/conversion/length/international_system.dart';
import 'package:international_system_of_units/src/conversion/mass/international_system.dart';

/// num is in kilograms per meters
extension ISMassPerLength on num {
  /// convert kilograms per meters to grams per meters
  num get toGramPerMeter => toGram;

  /// convert kilograms per meters to grams per miles
  num get toGramPerMile => toMeter(LengthUnit.mile).toGram;

  /// convert kilograms per meters to kilograms per kilometers
  num get toKilogramPerKilometer => toMeter(LengthUnit.kilometer);

  /// convert kilograms per meters to grams per kilometers
  num get toGramPerKilometer => toMeter(LengthUnit.kilometer).toGram;

  /// convert num from [unit] to kilograms per meters
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

/// represent all the supported unit for [ISMassPerLength]
enum MassPerLengthUnit {
  gramPerMeter,
  gramPerKilometer,
  kilogramPerMeter,
  gramPerMile,
  kilogramPerKilometer,
}
