import 'package:shared_preferences/shared_preferences.dart';

import '../constants/app_constants.dart';

class SharedPreferencesService {
  SharedPreferencesService(this._preferences);

  final SharedPreferences _preferences;

  Future<bool> saveAccessToken(String token) {
    return _preferences.setString(
      AppConstants.accessTokenKey,
      token,
    );
  }

  String? getAccessToken() {
    return _preferences.getString(
      AppConstants.accessTokenKey,
    );
  }

  Future<bool> removeAccessToken() {
    return _preferences.remove(
      AppConstants.accessTokenKey,
    );
  }

  Future<bool> saveRefreshToken(String token) {
    return _preferences.setString(
      AppConstants.refreshTokenKey,
      token,
    );
  }

  String? getRefreshToken() {
    return _preferences.getString(
      AppConstants.refreshTokenKey,
    );
  }

  Future<bool> clear() {
    return _preferences.clear();
  }

  bool get isLoggedIn {
    final token = getAccessToken();

    return token != null && token.isNotEmpty;
  }
}
