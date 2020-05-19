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

  String lookupMessage(String message_str, String locale, String name,
      List<dynamic> args, String meaning,
      {MessageIfAbsent ifAbsent}) {
    String failedLookup(String message_str, List<dynamic> args) {
      // If there's no message_str, then we are an internal lookup, e.g. an
      // embedded plural, and shouldn't fail.
      if (message_str == null) return null;
      throw new UnsupportedError("No translation found for message '$name',\n"
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

  static m15(miles, gallons) => "${miles} per imp ${gallons}";

  static m16(miles, gallons) => "${miles} per US ${gallons}";

  static m17(gallons, miles) => "US ${gallons} per ${miles}";

  static m18(value) =>
      "${Intl.plural(value, zero: 'bar', one: 'bar', other: 'bars')}";

  static m19(value) =>
      "${Intl.plural(value, zero: 'celsius', one: 'celsius', other: 'celsius')}";

  static m20(time) =>
      "${Intl.plural(time, zero: 'centuries', one: 'century', other: 'centuries')}";

  static m21(time) =>
      "${Intl.plural(time, zero: 'days', one: 'day', other: 'days')}";

  static m22(time) =>
      "${Intl.plural(time, zero: 'decades', one: 'decade', other: 'decades')}";

  static m23(value) =>
      "${Intl.plural(value, zero: 'fahrenheit', one: 'fahrenheit', other: 'fahrenheit')}";

  static m24(volume) =>
      "${Intl.plural(volume, zero: 'gallons', one: 'gallon', other: 'gallons')}";

  static m25(value) =>
      "${Intl.plural(value, zero: 'grams', one: 'gram', other: 'grams')}";

  static m26(time) =>
      "${Intl.plural(time, zero: 'hours', one: 'hour', other: 'hours')}";

  static m27(length) =>
      "${Intl.plural(length, zero: 'inches', one: 'inche', other: 'inches')}";

  static m28(value) =>
      "${Intl.plural(value, zero: 'kelvin', one: 'kelvin', other: 'kelvins')}";

  static m29(value) =>
      "${Intl.plural(value, zero: 'kilograms', one: 'kilogram', other: 'kilograms')}";

  static m30(length) =>
      "${Intl.plural(length, zero: 'kilometers', one: 'kilometer', other: 'kilometers')}";

  static m31(value) =>
      "${Intl.plural(value, zero: 'knots', one: 'knot', other: 'knots')}";

  static m32(volume) =>
      "${Intl.plural(volume, zero: 'liters', one: 'liter', other: 'liters')}";

  static m33(length) =>
      "${Intl.plural(length, zero: 'meters', one: 'meter', other: 'meters')}";

  static m34(time) =>
      "${Intl.plural(time, zero: 'microsecond', one: 'microsecond', other: 'microseconds')}";

  static m35(length) =>
      "${Intl.plural(length, zero: 'miles', one: 'mile', other: 'miles')}";

  static m36(time) =>
      "${Intl.plural(time, zero: 'millisecond', one: 'millisecond', other: 'milliseconds')}";

  static m37(time) =>
      "${Intl.plural(time, zero: 'minute', one: 'minute', other: 'minutes')}";

  static m38(time) =>
      "${Intl.plural(time, zero: 'month', one: 'month', other: 'months')}";

  static m39(time) =>
      "${Intl.plural(time, zero: 'mo', one: 'mo', other: 'mos')}";

  static m40(value) =>
      "${Intl.plural(value, zero: 'pascal', one: 'pascal', other: 'pascals')}";

  static m41(value) =>
      "${Intl.plural(value, zero: 'pounds', one: 'pound', other: 'pounds')}";

  static m42(value) =>
      "${Intl.plural(value, zero: 'rankine', one: 'rankine', other: 'rankines')}";

  static m43(value) =>
      "${Intl.plural(value, zero: 'rømer', one: 'rømer', other: 'rømer')}";

  static m44(time) =>
      "${Intl.plural(time, zero: 'seconds', one: 'second', other: 'seconds')}";

  static m45(value) =>
      "${Intl.plural(value, zero: 'tons', one: 'ton', other: 'tons')}";

  static m46(time) =>
      "${Intl.plural(time, zero: 'week', one: 'week', other: 'weeks')}";

  static m47(time) =>
      "${Intl.plural(time, zero: 'year', one: 'year', other: 'years')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "_intLocaleMetersPerSeconds": m0,
        "_intlImperialGallonsPerMiles": m1,
        "_intlKilometersPerLiters": m2,
        "_intlLitersPer100Kilometers": m3,
        "_intlLitersPerKilometers": m4,
        "_intlLitersPerMeters": m5,
        "_intlLocaleGramsPerKilometers": m6,
        "_intlLocaleGramsPerMeters": m7,
        "_intlLocaleGramsPerMiles": m8,
        "_intlLocaleKilogramsPerKilometers": m9,
        "_intlLocaleKilogramsPerMeters": m10,
        "_intlLocaleKilometersPerHours": m11,
        "_intlLocaleMilesPerHours": m12,
        "_intlLocalePoundForcePerSquareInch": m13,
        "_intlMetersPerLiters": m14,
        "_intlMilesPerImperialGallons": m15,
        "_intlMilesPerUsGallons": m16,
        "_intlUsGallonsPerMiles": m17,
        "localeBars": m18,
        "localeCelsius": m19,
        "localeCentury": m20,
        "localeDay": m21,
        "localeDecade": m22,
        "localeFahrenheit": m23,
        "localeGallons": m24,
        "localeGrams": m25,
        "localeHour": m26,
        "localeInches": m27,
        "localeKelvin": m28,
        "localeKilograms": m29,
        "localeKilometers": m30,
        "localeKnots": m31,
        "localeLiters": m32,
        "localeMeters": m33,
        "localeMicrosecond": m34,
        "localeMiles": m35,
        "localeMillisecond": m36,
        "localeMinute": m37,
        "localeMonth": m38,
        "localeMonthAbbreviation": m39,
        "localePascals": m40,
        "localePounds": m41,
        "localeRankine": m42,
        "localeRomer": m43,
        "localeSecond": m44,
        "localeTons": m45,
        "localeWeek": m46,
        "localeYear": m47
      };
}
