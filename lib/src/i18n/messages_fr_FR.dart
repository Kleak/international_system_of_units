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

  static m1(liters, kilometers) => "${liters} par ${kilometers}";

  static m2(liters, meters) => "${liters} par ${meters}";

  static m3(gallons, miles) => "US ${gallons} par ${miles}";

  static m4(time) => "${Intl.plural(time, zero: 'jour', one: 'jour', other: 'jours')}";

  static m5(volume) => "${Intl.plural(volume, zero: 'gallons', one: 'gallon', other: 'gallons')}";

  static m6(time) => "${Intl.plural(time, zero: 'heure', one: 'heure', other: 'heures')}";

  static m7(length) => "${Intl.plural(length, zero: 'inches', one: 'inche', other: 'inches')}";

  static m8(value) => "${Intl.plural(value, zero: 'kilogramme', one: 'kilogramme', other: 'kilogramme')}";

  static m9(length) => "${Intl.plural(length, zero: 'kilomètre', one: 'kilomètre', other: 'kilomètres')}";

  static m10(volume) => "${Intl.plural(volume, zero: 'litre', one: 'litre', other: 'litres')}";

  static m11(length) => "${Intl.plural(length, zero: 'mètre', one: 'mètre', other: 'mètres')}";

  static m12(length) => "${Intl.plural(length, zero: 'miles', one: 'mile', other: 'miles')}";

  static m13(value) => "${Intl.plural(value, zero: 'pounds', one: 'pound', other: 'pounds')}";

  static m14(time) => "${Intl.plural(time, zero: 'seconde', one: 'seconde', other: 'secondes')}";

  static m15(value) => "${Intl.plural(value, zero: 'tonne', one: 'tonne', other: 'tonnes')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "_intlImperialGallonsPerMiles" : m0,
    "_intlLitersPerKilometers" : m1,
    "_intlLitersPerMeters" : m2,
    "_intlUsGallonsPerMiles" : m3,
    "localeDay" : m4,
    "localeGallon" : m5,
    "localeHour" : m6,
    "localeInch" : m7,
    "localeKilogram" : m8,
    "localeKilometer" : m9,
    "localeLiter" : m10,
    "localeMeter" : m11,
    "localeMile" : m12,
    "localePound" : m13,
    "localeSecond" : m14,
    "localeTon" : m15
  };
}
