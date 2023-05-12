
// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr_FR locale. All the
// messages from the main program should be duplicated here with the same
// function name.


import 'package:intl/intl.dart';
import 'package:intl/src/intl_helpers.dart' show MessageIfAbsent;
import 'package:intl/message_lookup_by_library.dart';

final messages = MessageLookup();

class MessageLookup extends MessageLookupByLibrary {
  @override
  String get localeName => 'fr_FR';
  @override
  String? lookupMessage(String? messageText, String? locale, String? name,
      List<Object>? args, String? meaning,
      {MessageIfAbsent? ifAbsent}) {
    String failedLookup(String? messageStr, List<Object>? args) {
      // If there's no message_str, then we are an internal lookup, e.g. an
      // embedded plural, and shouldn't fail.
      throw UnsupportedError(
          "No translation found for message '$name',\n"
              "  original text '$messageStr'");
    }
    return super.lookupMessage(messageText, locale, name, args, meaning,
        ifAbsent: ifAbsent ?? failedLookup);
  }

  static m0(meters, seconds) => "$meters par $seconds";

  static m1(gallons, miles) => "imp $gallons par $miles";

  static m2(kilometers, liters) => "$kilometers par $liters";

  static m3(liters, kilometers) => "$liters par 100 $kilometers";

  static m4(liters, kilometers) => "$liters par $kilometers";

  static m5(liters, meters) => "$liters par $meters";

  static m6(grams, kilometers) => "$grams par $kilometers";

  static m7(grams, meters) => "$grams par $meters";

  static m8(grams, miles) => "$grams par $miles";

  static m9(kilograms, kilometers) => "$kilograms par $kilometers";

  static m10(kilograms, meters) => "$kilograms par $meters";

  static m11(kilometers, hours) => "$kilometers par $hours";

  static m12(miles, hours) => "$miles par $hours";

  static m13(pounds, inches) => "$pounds par ${inches}2";

  static m14(meters, liters) => "$meters par $liters";

  static m15(miles, gallons) => "$miles par imperial $gallons";

  static m16(miles, gallons) => "$miles par US $gallons";

  static m17(gallons, miles) => "US $gallons par $miles";

  static m18(value) => Intl.plural(value, zero: 'bar', one: 'bar', other: 'bars');

  static m19(value) => Intl.plural(value, zero: 'celsius', one: 'celsius', other: 'celsius');

  static m20(time) => Intl.plural(time, zero: 'siècle', one: 'siècle', other: 'siècles');

  static m21(volume) => Intl.plural(volume, zero: 'foot2', one: 'foot2', other: 'foot2');

  static m22(volume) => Intl.plural(volume, zero: 'inch2', one: 'inch2', other: 'inch2');

  static m23(volume) => Intl.plural(volume, zero: 'mètre2', one: 'mètre2', other: 'mètres2');

  static m24(volume) => Intl.plural(volume, zero: 'tasse', one: 'tasses', other: 'tasses');

  static m25(time) => Intl.plural(time, zero: 'jour', one: 'jour', other: 'jours');

  static m26(time) => Intl.plural(time, zero: 'décennie', one: 'décennie', other: 'décennies');

  static m27(value) => Intl.plural(value, zero: 'fahrenheit', one: 'fahrenheit', other: 'fahrenheit');

  static m28(volume) => Intl.plural(volume, zero: 'fluid ounces', one: 'fluid ounce', other: 'fluid ounces');

  static m29(volume) => Intl.plural(volume, zero: 'gallons', one: 'gallon', other: 'gallons');

  static m30(value) => Intl.plural(value, zero: 'grammes', one: 'gramme', other: 'grammes');

  static m31(time) => Intl.plural(time, zero: 'heure', one: 'heure', other: 'heures');

  static m32(length) => Intl.plural(length, zero: 'inches', one: 'inche', other: 'inches');

  static m33(value) => Intl.plural(value, zero: 'kelvin', one: 'kelvin', other: 'kelvins');

  static m34(value) => Intl.plural(value, zero: 'kilogramme', one: 'kilogramme', other: 'kilogrammes');

  static m35(length) => Intl.plural(length, zero: 'kilomètre', one: 'kilomètre', other: 'kilomètres');

  static m36(value) => Intl.plural(value, zero: 'knots', one: 'knot', other: 'knots');

  static m37(volume) => Intl.plural(volume, zero: 'litre', one: 'litre', other: 'litres');

  static m38(length) => Intl.plural(length, zero: 'mètres', one: 'mètre', other: 'mètres');

  static m39(value) => Intl.plural(value, zero: 'microgramme', one: 'microgramme', other: 'microgrammes');

  static m40(time) => Intl.plural(time, zero: 'microseconde', one: 'microseconde', other: 'microsecondes');

  static m41(length) => Intl.plural(length, zero: 'miles', one: 'mile', other: 'miles');

  static m42(value) => Intl.plural(value, zero: 'milligramme', one: 'milligramme', other: 'milligrammes');

  static m43(volume) => Intl.plural(volume, zero: 'millilitre', one: 'millilitre', other: 'millilitres');

  static m44(time) => Intl.plural(time, zero: 'milliseconde', one: 'milliseconde', other: 'millisecondes');

  static m45(time) => Intl.plural(time, zero: 'minute', one: 'minute', other: 'minutes');

  static m46(time) => Intl.plural(time, zero: 'mois', one: 'mois', other: 'mois');

  static m47(time) => Intl.plural(time, zero: 'mo', one: 'mo', other: 'mos');

  static m48(value) => Intl.plural(value, zero: 'ounces', one: 'ounce', other: 'ounces');

  static m49(value) => Intl.plural(value, zero: 'pascal', one: 'pascal', other: 'pascals');

  static m50(volume) => Intl.plural(volume, zero: 'pint', one: 'pint', other: 'pints');

  static m51(value) => Intl.plural(value, zero: 'pounds', one: 'pound', other: 'pounds');

  static m52(volume) => Intl.plural(volume, zero: 'quarts', one: 'quart', other: 'quarts');

  static m53(value) => Intl.plural(value, zero: 'rankine', one: 'rankine', other: 'rankines');

  static m54(value) => Intl.plural(value, zero: 'rømer', one: 'rømer', other: 'rømer');

  static m55(time) => Intl.plural(time, zero: 'seconde', one: 'seconde', other: 'secondes');

  static m56(value) => Intl.plural(value, zero: 'stones', one: 'stone', other: 'stones');

  static m57(volume) => Intl.plural(volume, zero: 'cuillière à soupe', one: 'cuillière à soupe', other: 'cuillières à soupe');

  static m58(volume) => Intl.plural(volume, zero: 'cuillière à café', one: 'cuillière à café', other: 'cuillières à café');

  static m59(value) => Intl.plural(value, zero: 'tonne', one: 'tonne', other: 'tonnes');

  static m60(time) => Intl.plural(time, zero: 'semaine', one: 'semaind', other: 'semaines');

  static m61(time) => Intl.plural(time, zero: 'année', one: 'année', other: 'années');

  @override
  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "_intLocaleMetersPerSeconds" : m0,
    "_intlImperialGallonsPerMiles" : m1,
    "_intlKilometersPerLiters" : m2,
    "_intlLitersPer100Kilometers" : m3,
    "_intlLitersPerKilometers" : m4,
    "_intlLitersPerMeters" : m5,
    "_intlLocaleGramsPerKilometers" : m6,
    "_intlLocaleGramsPerMeters" : m7,
    "_intlLocaleGramsPerMiles" : m8,
    "_intlLocaleKilogramsPerKilometers" : m9,
    "_intlLocaleKilogramsPerMeters" : m10,
    "_intlLocaleKilometersPerHours" : m11,
    "_intlLocaleMilesPerHours" : m12,
    "_intlLocalePoundForcePerSquareInch" : m13,
    "_intlMetersPerLiters" : m14,
    "_intlMilesPerImperialGallons" : m15,
    "_intlMilesPerUsGallons" : m16,
    "_intlUsGallonsPerMiles" : m17,
    "localeBars" : m18,
    "localeCelsius" : m19,
    "localeCentury" : m20,
    "localeCubicFoot" : m21,
    "localeCubicInch" : m22,
    "localeCubicMeter" : m23,
    "localeCup" : m24,
    "localeDay" : m25,
    "localeDecade" : m26,
    "localeFahrenheit" : m27,
    "localeFluidOunces" : m28,
    "localeGallons" : m29,
    "localeGrams" : m30,
    "localeHour" : m31,
    "localeInches" : m32,
    "localeKelvin" : m33,
    "localeKilograms" : m34,
    "localeKilometers" : m35,
    "localeKnots" : m36,
    "localeLiters" : m37,
    "localeMeters" : m38,
    "localeMicrograms" : m39,
    "localeMicrosecond" : m40,
    "localeMiles" : m41,
    "localeMilligrams" : m42,
    "localeMilliliters" : m43,
    "localeMillisecond" : m44,
    "localeMinute" : m45,
    "localeMonth" : m46,
    "localeMonthAbbreviation" : m47,
    "localeOunce" : m48,
    "localePascals" : m49,
    "localePint" : m50,
    "localePounds" : m51,
    "localeQuart" : m52,
    "localeRankine" : m53,
    "localeRomer" : m54,
    "localeSecond" : m55,
    "localeStone" : m56,
    "localeTablespoon" : m57,
    "localeTeaspoon" : m58,
    "localeTons" : m59,
    "localeWeek" : m60,
    "localeYear" : m61
  };
}
