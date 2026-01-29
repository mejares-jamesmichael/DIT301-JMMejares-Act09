import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  String? _currentUserEmail;

  String? get currentUserEmail => _currentUserEmail;
  bool get isAuthenticated => _currentUserEmail != null;

  Future<void> login(String email, String password) async {
    // Simulate a network delay
    await Future.delayed(const Duration(seconds: 1));
    _currentUserEmail = email;
    notifyListeners();
  }

  Future<void> logout() async {
    _currentUserEmail = null;
    notifyListeners();
  }
}
