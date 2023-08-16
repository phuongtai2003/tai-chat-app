import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class BasePrefs {
  SharedPreferences? sharedPreferences;

  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  T getValueForKey<T>(String key) {
    return sharedPreferences?.get(key) as T;
  }

  Future<bool> setValueForKey(String key, dynamic value) {
    if (value is int) {
      return sharedPreferences!.setInt(key, value);
    }

    if (value is String) {
      return sharedPreferences!.setString(key, value);
    }

    if (value is List<String>) {
      return sharedPreferences!.setStringList(key, value);
    }

    if (value is bool) {
      return sharedPreferences!.setBool(key, value);
    }

    if (value is double) {
      return sharedPreferences!.setDouble(key, value);
    }

    final jsonValue = json.encode(value);
    return sharedPreferences!.setString(key, jsonValue);
  }

  Future<void> remove({required String key}) async {
    await sharedPreferences!.remove(key);
  }
}
