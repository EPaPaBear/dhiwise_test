import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/data/models/authenticate/post_authenticate_resp.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setName(String value) {
    return _sharedPreferences!.setString('name', value);
  }

  String getName() {
    try {
      return _sharedPreferences!.getString('name') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setMessage(String value) {
    return _sharedPreferences!.setString('message', value);
  }

  String getMessage() {
    try {
      return _sharedPreferences!.getString('message') ?? '';
    } catch (e) {
      return '';
    }
  }
}
