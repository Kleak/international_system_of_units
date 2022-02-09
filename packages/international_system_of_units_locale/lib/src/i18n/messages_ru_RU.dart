// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru_RU locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart' show MessageIfAbsent;

final messages = new MessageLookup();

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru_RU';
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

  static m0(meters, seconds) => "{метров} per {сек}";

  static m1(gallons, miles) => "imp {галлонов} per {милю}";

  static m2(kilometers, liters) => "{километров} per {литр}";

  static m3(liters, kilometers) => "{литров} per 100 {километров}";

  static m4(liters, kilometers) => "{литров} per {километр}";

  static m5(liters, meters) => "{литров} per {метр}";

  static m6(grams, kilometers) => "{грамм} per {киллометр}";

  static m7(grams, meters) => "{граммов} per {метр}";

  static m8(grams, miles) => "{граммов} per {милю}";

  static m9(kilograms, kilometers) => "{килограммов} per {киллометр}";

  static m10(kilograms, meters) => "{килограм} per {метр}";

  static m11(kilometers, hours) => "{километров} per {час}";

  static m12(miles, hours) => "{миль} per {час}";

  static m13(pounds, inches) => "{фунтов} force per square {дюйм}";

  static m14(meters, liters) => "{метров} per {литр}";

  static m15(miles, gallons) => "{миль} per imperial {галлон}";

  static m16(miles, gallons) => "{миль} per US {галлон}";

  static m17(gallons, miles) => "US {галлонов} per {милю}";

  static m18(value) => Intl.plural(value, zero: 'бар', one: 'бар', other: 'бары');

  static m19(value) => Intl.plural(value, zero: 'цельсий', one: 'цельсий', other: 'цельсий');

  static m20(time) => Intl.plural(time, zero: 'века', one: 'век', other: 'века');

  static m21(volume) => Intl.plural(volume, zero: 'кубический фут', one: 'кубический фут', other: 'кубический фут');

  static m22(volume) => Intl.plural(volume, zero: 'кубический дюйм', one: 'кубический дюйм', other: 'кубический дюйм');

  static m23(volume) => Intl.plural(volume, zero: 'кубический метр', one: 'кубический метр', other: 'кубический метр');

  static m24(volume) => Intl.plural(volume, zero: 'чашки', one: 'чашка', other: 'чашки');

  static m25(time) => Intl.plural(time, zero: 'дни', one: 'день', other: 'дни');

  static m26(time) => Intl.plural(time, zero: 'десятилетия', one: 'десятилетие', other: 'десятилетия');

  static m27(value) => Intl.plural(value, zero: 'фаренгейт', one: 'фаренгейт', other: 'фаренгейт');

  static m28(volume) => Intl.plural(volume, zero: 'жидкие унции', one: 'жидкая унция', other: 'жидкие унции');

  static m29(volume) => Intl.plural(volume, zero: 'галлоны', one: 'галлон', other: 'галлоны');

  static m30(value) => Intl.plural(value, zero: 'граммы', one: 'грамм', other: 'граммы');

  static m31(time) => Intl.plural(time, zero: 'часы', one: 'час', other: 'часы');

  static m32(length) => Intl.plural(length, zero: 'дюймов', one: 'дюйм', other: 'дюймов');

  static m33(value) => Intl.plural(value, zero: 'кельвин', one: 'кельвин', other: 'кильвины');

  static m34(value) => Intl.plural(value, zero: 'килограммы', one: 'килограмм', other: 'килограммы');

  static m35(length) => Intl.plural(length, zero: 'километров', one: 'километр', other: 'километров');

  static m36(value) => Intl.plural(value, zero: 'узлы', one: 'узлы', other: 'узлы');

  static m37(volume) => Intl.plural(volume, zero: 'литров', one: 'литр', other: 'литров');

  static m38(length) => Intl.plural(length, zero: 'метров', one: 'метр', other: 'метров');

  static m39(value) => Intl.plural(value, zero: 'микрограммы', one: 'микрограмм', other: 'микрограммы');

  static m40(time) => Intl.plural(time, zero: 'микросекунда', one: 'микросекунда', other: 'микросекунд');

  static m41(length) => Intl.plural(length, zero: 'миль', one: 'миля', other: 'миль');

  static m42(value) => Intl.plural(value, zero: 'миллиграммы', one: 'миллиграмм', other: 'миллиграммы');

  static m43(volume) => Intl.plural(volume, zero: 'миллиметры', one: 'миллиметр', other: 'миллиметров');

  static m44(time) => Intl.plural(time, zero: 'миллисекунда', one: 'миллисекунда', other: 'миллисекунд');

  static m45(time) => Intl.plural(time, zero: 'минута', one: 'минута', other: 'минуты');

  static m46(time) => Intl.plural(time, zero: 'месяц', one: 'месяц', other: 'месяца');

  static m47(time) => Intl.plural(time, zero: 'мес', one: 'мес', other: 'мес');

  static m48(value) => Intl.plural(value, zero: 'унции', one: 'унция', other: 'унции');

  static m49(value) => Intl.plural(value, zero: 'паскаль', one: 'паскаль', other: 'паскали');

  static m50(volume) => Intl.plural(volume, zero: 'пинта', one: 'пинта', other: 'пинты');

  static m51(value) => Intl.plural(value, zero: 'фунты', one: 'фунт', other: 'фунты');

  static m52(volume) => Intl.plural(volume, zero: 'кварты', one: 'кварта', other: 'кварты');

  static m53(value) => Intl.plural(value, zero: 'ранкин', one: 'ранкин', other: 'ранкины');

  static m54(value) => Intl.plural(value, zero: 'размер', one: 'размер', other: 'ромер');

  static m55(time) => Intl.plural(time, zero: 'секунд', one: 'секунда', other: 'секунды');

  static m56(value) => Intl.plural(value, zero: 'камни', one: 'камень', other: 'камни');

  static m57(volume) => Intl.plural(volume, zero: 'столовая ложка', one: 'столовая ложка', other: 'столовые ложки');

  static m58(volume) => Intl.plural(volume, zero: 'чайная ложка', one: 'чайная ложка', other: 'чайные ложки');

  static m59(value) => Intl.plural(value, zero: 'тонн', one: 'тонна', other: 'тонн');

  static m60(time) => Intl.plural(time, zero: 'недели', one: 'неделя', other: 'недели');

  static m61(time) => Intl.plural(time, zero: 'год', one: 'год', other: 'года');

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
