// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en_US';

  String lookupMessage(
      String message_str,
      String locale,
      String name,
      List<dynamic> args,
      String meaning,
      {MessageIfAbsent ifAbsent}) {
    String failedLookup(String message_str, List<dynamic> args) {
      // If there's no message_str, then we are an internal lookup, e.g. an
      // embedded plural, and shouldn't fail.
      if (message_str == null) return null;
      throw new UnsupportedError(
          "No translation found for message '$name',\n"
          "  original text '$message_str'");
    }
    return super.lookupMessage(message_str, locale, name, args, meaning,
        ifAbsent: ifAbsent ?? failedLookup);
  }

  static m0(meters, seconds) => "${meters} per ${seconds}";

  static m1(gallons, miles) => "imp ${gallons} per ${miles}";

  static m2(kilometers, liters) => "${kilometers} per ${liters}";

  static m3(liters, kilometers) => "${liters} per 100 ${kilometers}";

  static m4(liters, kilometers) => "${liters} per ${kilometers}";

  static m5(liters, meters) => "${liters} per ${meters}";

  static m6(grams, kilometers) => "${grams} per ${kilometers}";

  static m7(grams, meters) => "${grams} per ${meters}";

  static m8(grams, miles) => "${grams} per ${miles}";

  static m9(kilograms, kilometers) => "${kilograms} per ${kilometers}";

  static m10(kilograms, meters) => "${kilograms} per ${meters}";

  static m11(kilometers, hours) => "${kilometers} per ${hours}";

  static m12(miles, hours) => "${miles} per ${hours}";

  static m13(pounds, inches) => "${pounds} force per square ${inches}";

  static m14(meters, liters) => "${meters} per ${liters}";

  static m15(miles, gallons) => "${miles} per imperial ${gallons}";

  static m16(miles, gallons) => "${miles} per US ${gallons}";

  static m17(gallons, miles) => "US ${gallons} per ${miles}";

  static m18(value) => "${Intl.plural(value, zero: 'bar', one: 'bar', other: 'bars')}";

  static m19(value) => "${Intl.plural(value, zero: 'celsius', one: 'celsius', other: 'celsius')}";

  static m20(time) => "${Intl.plural(time, zero: 'centuries', one: 'century', other: 'centuries')}";

  static m21(volume) => "${Intl.plural(volume, zero: 'cubic foot', one: 'cubic foot', other: 'cubic foot')}";

  static m22(volume) => "${Intl.plural(volume, zero: 'cubic inch', one: 'cubic inch', other: 'cubic inch')}";

  static m23(volume) => "${Intl.plural(volume, zero: 'cubic meter', one: 'cubic meter', other: 'cubic meter')}";

  static m24(volume) => "${Intl.plural(volume, zero: 'cups', one: 'cup', other: 'cups')}";

  static m25(time) => "${Intl.plural(time, zero: 'days', one: 'day', other: 'days')}";

  static m26(time) => "${Intl.plural(time, zero: 'decades', one: 'decade', other: 'decades')}";

  static m27(value) => "${Intl.plural(value, zero: 'fahrenheit', one: 'fahrenheit', other: 'fahrenheit')}";

  static m28(volume) => "${Intl.plural(volume, zero: 'fluid ounces', one: 'fluid ounce', other: 'fluid ounces')}";

  static m29(volume) => "${Intl.plural(volume, zero: 'gallons', one: 'gallon', other: 'gallons')}";

  static m30(value) => "${Intl.plural(value, zero: 'grams', one: 'gram', other: 'grams')}";

  static m31(time) => "${Intl.plural(time, zero: 'hours', one: 'hour', other: 'hours')}";

  static m32(length) => "${Intl.plural(length, zero: 'inches', one: 'inche', other: 'inches')}";

  static m33(value) => "${Intl.plural(value, zero: 'kelvin', one: 'kelvin', other: 'kelvins')}";

  static m34(value) => "${Intl.plural(value, zero: 'kilograms', one: 'kilogram', other: 'kilograms')}";

  static m35(length) => "${Intl.plural(length, zero: 'kilometers', one: 'kilometer', other: 'kilometers')}";

  static m36(value) => "${Intl.plural(value, zero: 'knots', one: 'knot', other: 'knots')}";

  static m37(volume) => "${Intl.plural(volume, zero: 'liters', one: 'liter', other: 'liters')}";

  static m38(length) => "${Intl.plural(length, zero: 'meters', one: 'meter', other: 'meters')}";

  static m39(value) => "${Intl.plural(value, zero: 'micrograms', one: 'microgram', other: 'micrograms')}";

  static m40(time) => "${Intl.plural(time, zero: 'microsecond', one: 'microsecond', other: 'microseconds')}";

  static m41(length) => "${Intl.plural(length, zero: 'miles', one: 'mile', other: 'miles')}";

  static m42(value) => "${Intl.plural(value, zero: 'milligrams', one: 'milligram', other: 'milligrams')}";

  static m43(volume) => "${Intl.plural(volume, zero: 'milliliters', one: 'milliliter', other: 'milliliters')}";

  static m44(time) => "${Intl.plural(time, zero: 'millisecond', one: 'millisecond', other: 'milliseconds')}";

  static m45(time) => "${Intl.plural(time, zero: 'minute', one: 'minute', other: 'minutes')}";

  static m46(time) => "${Intl.plural(time, zero: 'month', one: 'month', other: 'months')}";

  static m47(time) => "${Intl.plural(time, zero: 'mo', one: 'mo', other: 'mos')}";

  static m48(value) => "${Intl.plural(value, zero: 'ounces', one: 'ounce', other: 'ounces')}";

  static m49(value) => "${Intl.plural(value, zero: 'pascal', one: 'pascal', other: 'pascals')}";

  static m50(volume) => "${Intl.plural(volume, zero: 'pint', one: 'pint', other: 'pints')}";

  static m51(value) => "${Intl.plural(value, zero: 'pounds', one: 'pound', other: 'pounds')}";

  static m52(volume) => "${Intl.plural(volume, zero: 'quarts', one: 'quart', other: 'quarts')}";

  static m53(value) => "${Intl.plural(value, zero: 'rankine', one: 'rankine', other: 'rankines')}";

  static m54(value) => "${Intl.plural(value, zero: 'rømer', one: 'rømer', other: 'rømer')}";

  static m55(time) => "${Intl.plural(time, zero: 'seconds', one: 'second', other: 'seconds')}";

  static m56(value) => "${Intl.plural(value, zero: 'stones', one: 'stone', other: 'stones')}";

  static m57(volume) => "${Intl.plural(volume, zero: 'tablespoon', one: 'tablespoon', other: 'tablespoons')}";

  static m58(volume) => "${Intl.plural(volume, zero: 'teaspoon', one: 'teaspoon', other: 'teaspoons')}";

  static m59(value) => "${Intl.plural(value, zero: 'tons', one: 'ton', other: 'tons')}";

  static m60(time) => "${Intl.plural(time, zero: 'week', one: 'week', other: 'weeks')}";

  static m61(time) => "${Intl.plural(time, zero: 'year', one: 'year', other: 'years')}";

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
