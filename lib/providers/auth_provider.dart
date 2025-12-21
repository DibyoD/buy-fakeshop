import 'package:fakeshop_provider/models/user.dart';
import 'package:fakeshop_provider/services/api_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';

class AuthProvider extends ChangeNotifier {
  bool isLoading = false;
  User? user;
  bool isLoggedIn = false;
  bool _initialized = false; // <-- NEW

  AuthProvider() {
    loadUserFromStorage();
  }

  Future<void> loadUserFromStorage() async {
    if (_initialized) return;
    _initialized = true;

    final storage = FlutterSecureStorage();
    final token = await storage.read(key: "TOKEN");

    if (token != null) {
      try {
        final userResponse = await ApiServices.userProfile();
        setUser(userResponse);
      } catch (err) {
        print("Failed to load user after restart: $err");
      }
    }

    isLoading = false;
    notifyListeners();
  }

  login({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    isLoading = true;
    notifyListeners();
    try {
      final loginResponse = await ApiServices.login(
        email: email,
        password: password,
      );
      final accessToken = loginResponse['access_token'];
      final storage = FlutterSecureStorage();
      await storage.write(key: "TOKEN", value: accessToken);
      final userResponse = await ApiServices.userProfile();
      setUser(userResponse);
      context.go('/home');
    } catch (error) {
      print("Error here: $error");
    }

    isLoading = false;
    notifyListeners();
  }

  setUser(User newUser) {
    user = newUser;
    isLoggedIn = true;
    notifyListeners();
  }

  void clearUser() {
    user = null;
    isLoggedIn = false;
    notifyListeners();
  }
}
