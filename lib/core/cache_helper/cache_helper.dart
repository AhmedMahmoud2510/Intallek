import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:intallek/core/cache_helper/cache_values.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static dynamic getData({required String key}) {
    return sharedPreferences.get(key);
  }

  static bool isEnglish() => getCurrentLanguage() == 'en';

  static Future<void> changeLanguageToEn() async {
    await CacheHelper.saveData(key: CacheKeys.currentLanguage, value: 'en');
  }

  static dynamic getCurrentLanguage() {
    return CacheHelper.getData(key: CacheKeys.currentLanguage) ?? 'en';
  }

  static Future<void> changeLanguageToAr() async {
    await CacheHelper.saveData(key: CacheKeys.currentLanguage, value: 'ar');
  }

  Future<void> cacheLanguageCode(String languageCode) async {
    await sharedPreferences.setString(CacheKeys.currentLanguage, languageCode);
  }

  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return sharedPreferences.setString(key, value);
    if (value is int) return sharedPreferences.setInt(key, value);
    if (value is bool) return sharedPreferences.setBool(key, value);

    return sharedPreferences.setDouble(key, value as double);
  }

  static Future<bool> removeData({required String key}) async {
    return sharedPreferences.remove(key);
  }

  static Future<bool> clearAllData() async {
    return sharedPreferences.clear();
  }

  static Future saveSecuredString({
    required String key,
    required dynamic value,
  }) async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint(
      'FlutterSecureStorage : setSecuredString with key : $key and value : $value',
    );
    await flutterSecureStorage.write(key: key, value: value.toString());
  }

  static Future getSecuredString({required String key}) async {
    const flutterSecureStorage = FlutterSecureStorage();
    debugPrint('FlutterSecureStorage : getSecuredString with key :');
    try {
      return await flutterSecureStorage.read(key: key);
    } catch (e) {
      return null;
    }
  }

  static Future clearAllSecuredData() async {
    debugPrint('FlutterSecureStorage : all data has been cleared');
    const flutterSecureStorage = FlutterSecureStorage();
    await flutterSecureStorage.deleteAll();
  }
}
