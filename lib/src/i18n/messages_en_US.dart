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

  static m0(gallons, miles) => "imp ${gallons} per ${miles}";

  static m1(kilometers, liters) => "${kilometers} per ${liters}";

  static m2(liters, kilometers) => "${liters} per 100 ${kilometers}";

  static m3(liters, kilometers) => "${liters} per ${kilometers}";

  static m4(liters, meters) => "${liters} per ${meters}";

  static m5(meters, liters) => "${meters} per ${liters}";

  static m6(miles, gallons) => "${miles} per imp ${gallons}";

  static m7(miles, gallons) => "${miles} per US ${gallons}";

  static m8(gallons, miles) => "US ${gallons} per ${miles}";

  static m9(time) => "${Intl.plural(time, zero: 'centuries', one: 'century', other: 'centuries')}";

  static m10(time) => "${Intl.plural(time, zero: 'days', one: 'day', other: 'days')}";

  static m11(time) => "${Intl.plural(time, zero: 'decades', one: 'decade', other: 'decades')}";

  static m12(volume) => "${Intl.plural(volume, zero: 'gallons', one: 'gallon', other: 'gallons')}";

  static m13(time) => "${Intl.plural(time, zero: 'hours', one: 'hour', other: 'hours')}";

  static m14(length) => "${Intl.plural(length, zero: 'inches', one: 'inche', other: 'inches')}";

  static m15(value) => "${Intl.plural(value, zero: 'kilograms', one: 'kilogram', other: 'kilograms')}";

  static m16(length) => "${Intl.plural(length, zero: 'kilometers', one: 'kilometer', other: 'kilometers')}";

  static m17(volume) => "${Intl.plural(volume, zero: 'liters', one: 'liter', other: 'liters')}";

  static m18(length) => "${Intl.plural(length, zero: 'meters', one: 'meter', other: 'meters')}";

  static m19(time) => "${Intl.plural(time, zero: 'microsecond', one: 'microsecond', other: 'microseconds')}";

  static m20(length) => "${Intl.plural(length, zero: 'miles', one: 'mile', other: 'miles')}";

  static m21(time) => "${Intl.plural(time, zero: 'millisecond', one: 'millisecond', other: 'milliseconds')}";

  static m22(time) => "${Intl.plural(time, zero: 'minute', one: 'minute', other: 'minutes')}";

  static m23(time) => "${Intl.plural(time, zero: 'month', one: 'month', other: 'months')}";

  static m24(time) => "${Intl.plural(time, zero: 'mo', one: 'mo', other: 'mos')}";

  static m25(value) => "${Intl.plural(value, zero: 'pounds', one: 'pound', other: 'pounds')}";

  static m26(time) => "${Intl.plural(time, zero: 'seconds', one: 'second', other: 'seconds')}";

  static m27(value) => "${Intl.plural(value, zero: 'tons', one: 'ton', other: 'tons')}";

  static m28(time) => "${Intl.plural(time, zero: 'week', one: 'week', other: 'weeks')}";

  static m29(time) => "${Intl.plural(time, zero: 'year', one: 'year', other: 'years')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "_intlImperialGallonsPerMiles" : m0,
    "_intlKilometersPerLiters" : m1,
    "_intlLitersPer100Kilometers" : m2,
    "_intlLitersPerKilometers" : m3,
    "_intlLitersPerMeters" : m4,
    "_intlMeterPerLiter" : m5,
    "_intlMilePerImperialGallon" : m6,
    "_intlMilePerUsGallon" : m7,
    "_intlUsGallonsPerMiles" : m8,
    "localeCentury" : m9,
    "localeDay" : m10,
    "localeDecade" : m11,
    "localeGallon" : m12,
    "localeHour" : m13,
    "localeInch" : m14,
    "localeKilogram" : m15,
    "localeKilometer" : m16,
    "localeLiter" : m17,
    "localeMeter" : m18,
    "localeMicrosecond" : m19,
    "localeMile" : m20,
    "localeMillisecond" : m21,
    "localeMinute" : m22,
    "localeMonth" : m23,
    "localeMonthAbbreviation" : m24,
    "localePound" : m25,
    "localeSecond" : m26,
    "localeTon" : m27,
    "localeWeek" : m28,
    "localeYear" : m29
  };
}
