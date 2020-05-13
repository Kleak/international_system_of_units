// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_UK locale. All the
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
  String get localeName => 'en_UK';

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

  static m2(liters, kilometers) => "${liters} per ${kilometers}";

  static m3(liters, meters) => "${liters} per ${meters}";

  static m4(meters, liters) => "${meters} per ${liters}";

  static m5(miles, gallons) => "${miles} per imp ${gallons}";

  static m6(miles, gallons) => "${miles} per US ${gallons}";

  static m7(gallons, miles) => "US ${gallons} per ${miles}";

  static m8(time) => "${Intl.plural(time, zero: 'days', one: 'day', other: 'days')}";

  static m9(volume) => "${Intl.plural(volume, zero: 'gallons', one: 'gallon', other: 'gallons')}";

  static m10(time) => "${Intl.plural(time, zero: 'hours', one: 'hour', other: 'hours')}";

  static m11(length) => "${Intl.plural(length, zero: 'inches', one: 'inche', other: 'inches')}";

  static m12(value) => "${Intl.plural(value, zero: 'kilograms', one: 'kilogram', other: 'kilograms')}";

  static m13(length) => "${Intl.plural(length, zero: 'kilometres', one: 'kilometre', other: 'kilometres')}";

  static m14(volume) => "${Intl.plural(volume, zero: 'litres', one: 'litre', other: 'litres')}";

  static m15(length) => "${Intl.plural(length, zero: 'metres', one: 'metre', other: 'metres')}";

  static m16(length) => "${Intl.plural(length, zero: 'miles', one: 'mile', other: 'miles')}";

  static m17(value) => "${Intl.plural(value, zero: 'pounds', one: 'pound', other: 'pounds')}";

  static m18(time) => "${Intl.plural(time, zero: 'seconds', one: 'second', other: 'seconds')}";

  static m19(value) => "${Intl.plural(value, zero: 'tons', one: 'ton', other: 'tons')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "_intlImperialGallonsPerMiles" : m0,
    "_intlKilometersPerLiters" : m1,
    "_intlLitersPerKilometers" : m2,
    "_intlLitersPerMeters" : m3,
    "_intlMeterPerLiter" : m4,
    "_intlMilePerImperialGallon" : m5,
    "_intlMilePerUsGallon" : m6,
    "_intlUsGallonsPerMiles" : m7,
    "localeDay" : m8,
    "localeGallon" : m9,
    "localeHour" : m10,
    "localeInch" : m11,
    "localeKilogram" : m12,
    "localeKilometer" : m13,
    "localeLiter" : m14,
    "localeMeter" : m15,
    "localeMile" : m16,
    "localePound" : m17,
    "localeSecond" : m18,
    "localeTon" : m19
  };
}
