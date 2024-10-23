import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String? name;
  String? email;

  void setName(String val) {
    name = val;
    notifyListeners();
  }

  void setEmail(String val) {
    email = val;

    notifyListeners();
  }

  String? getName() {
    return name;
  }

  String? getEmail() {
    return email;
  }
}
