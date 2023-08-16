import 'package:flutter/material.dart';
import 'package:tai_chat_app/common/storage/app_prefs.dart';
import 'package:tai_chat_app/get_it.dart';

class Helpers {
  static Locale getCurrentLocale() {
    final languageCode = getIt<AppPrefs>().getLanguage();
    if (languageCode == 'vi') {
      return const Locale('vi');
    }
    return const Locale('en');
  }
}
