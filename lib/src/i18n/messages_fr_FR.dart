// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr_FR locale. All the
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
  String get localeName => 'fr_FR';

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

  static m0(gallons, miles) => "imp ${gallons} par ${miles}";

  static m1(kilometers, liters) => "${kilometers} par ${liters}";

  static m2(liters, kilometers) => "${liters} par ${kilometers}";

  static m3(liters, meters) => "${liters} par ${meters}";

  static m4(meters, liters) => "${meters} par ${liters}";

  static m5(miles, gallons) => "${miles} par imp ${gallons}";

  static m6(miles, gallons) => "${miles} par US ${gallons}";

  static m7(gallons, miles) => "US ${gallons} par ${miles}";

  static m8(time) => "${Intl.plural(time, zero: 'jour', one: 'jour', other: 'jours')}";

  static m9(volume) => "${Intl.plural(volume, zero: 'gallon', one: 'gallon', other: 'gallons')}";

  static m10(time) => "${Intl.plural(time, zero: 'heure', one: 'heure', other: 'heures')}";

  static m11(length) => "${Intl.plural(length, zero: 'inche', one: 'inche', other: 'inches')}";

  static m12(value) => "${Intl.plural(value, zero: 'kilogramme', one: 'kilogramme', other: 'kilogrammes')}";

  static m13(length) => "${Intl.plural(length, zero: 'kilomètre', one: 'kilomètre', other: 'kilomètres')}";

  static m14(volume) => "${Intl.plural(volume, zero: 'litre', one: 'litre', other: 'litres')}";

  static m15(length) => "${Intl.plural(length, zero: 'mètre', one: 'mètre', other: 'mètres')}";

  static m16(length) => "${Intl.plural(length, zero: 'mile', one: 'mile', other: 'miles')}";

  static m17(value) => "${Intl.plural(value, zero: 'pound', one: 'pound', other: 'pounds')}";

  static m18(time) => "${Intl.plural(time, zero: 'seconde', one: 'seconde', other: 'secondes')}";

  static m19(value) => "${Intl.plural(value, zero: 'tonne', one: 'tonne', other: 'tonnes')}";

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
