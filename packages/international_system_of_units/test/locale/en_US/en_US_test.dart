import 'package:international_system_of_units/international_system_of_units.dart';
import 'package:intl/locale.dart';

import 'length/length.dart' as length;

void main() async {
  final locale = Locale.fromSubtags(languageCode: 'en', countryCode: 'US');
  final intl = await InternationalSystemLocalizations.load(locale);

  length.mainLength(intl);
}
