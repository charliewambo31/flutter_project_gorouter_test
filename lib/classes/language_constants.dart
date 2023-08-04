import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//import 'app_localizations.dart';

// ignore: constant_identifier_names
const String LanguageCode = 'languageCode';

//languages code
// ignore: constant_identifier_names
const String English = 'en';
// ignore: constant_identifier_names
//const String FARSI = 'fa';
// ignore: constant_identifier_names
//const String ARABIC = 'ar';
// ignore: constant_identifier_names
//const String HINDI = 'hi';
// ignore: constant_identifier_names
const String Francais = 'fr';

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(LanguageCode, languageCode);
  return locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String languageCode = prefs.getString(LanguageCode) ?? English ;
  return locale(languageCode);
}

Locale locale(String languageCode) {
  switch (languageCode) {
      case English :
      return const Locale(English , '');
    // case FARSI:
    //   return const Locale(FARSI, "");
    // case ARABIC:
    //   return const Locale(ARABIC, "");
    // case HINDI:
    //   return const Locale(HINDI, "");
    case Francais :
      return const Locale(Francais , "");
    default:
      return const Locale(English , '');
  }
}

//AppLocalizations translation(BuildContext context) => AppLocalizations.of(context)!;
