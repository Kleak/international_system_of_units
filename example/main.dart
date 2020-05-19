import 'package:international_system_of_units/international_system_of_units.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart';

void main(List<String> arguments) async {
  final language = 'en_US';
  final sIi18n =
      await InternationalSystemLocalizations.load(Locale.parse(language));
  Intl.defaultLocale = language;

  final x = 1;
  print(x.toKilogram(MassUnit.ounce));
}
