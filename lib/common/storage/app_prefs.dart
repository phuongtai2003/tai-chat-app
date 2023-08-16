import 'package:tai_chat_app/common/storage/base_prefs.dart';
import 'package:tai_chat_app/common/global_constants.dart';

class AppPrefs extends BasePrefs {
  static Future<AppPrefs> instance() async {
    final appPrefs = AppPrefs();
    await appPrefs.init();
    return appPrefs;
  }

  /// Language
  Future<void> saveLanguage({required String languageCode}) async {
    await setValueForKey(GlobalConstants.kLanguage, languageCode);
  }

  String? getLanguage() {
    String? result = getValueForKey<String?>(GlobalConstants.kLanguage);
    return result;
  }

  /// Login Credentials
  Future<void> saveLoginEmail({required String email}) async {
    await setValueForKey(GlobalConstants.kEmailInput, email);
  }

  String? getEmailInput() {
    String? result = getValueForKey<String?>(GlobalConstants.kEmailInput);
    return result;
  }

  Future<void> saveLoginPassword({required String password}) async {
    await setValueForKey(GlobalConstants.kPasswordInput, password);
  }

  String? getPasswordInput() {
    String? result = getValueForKey<String?>(GlobalConstants.kPasswordInput);
    return result;
  }
}
