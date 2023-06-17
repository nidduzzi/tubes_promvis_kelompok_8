import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// An Nhost [AuthStore] implementation backed by the `shared_preferences`
/// plugin, so authentication information is retained between runs of the
/// application.
class SharedPreferencesAuthStore implements AuthStore {
  @override
  Future<String?> getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  @override
  Future<void> setString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  @override
  Future<void> removeItem(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }
}
