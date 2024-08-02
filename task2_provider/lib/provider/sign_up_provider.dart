import 'package:flutter/material.dart';

class SignUpProvider with ChangeNotifier {
  bool _isChecked = false;
  bool _showPassword = false;

  bool get isChecked => _isChecked;
  bool get showPassword => _showPassword;

  void toggleCheckbox() {
    _isChecked = !_isChecked;
    notifyListeners();
  }

  void toggleShowPassword() {
    _showPassword = !_showPassword;
    notifyListeners();
  }
}
