import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ApplicationColors with ChangeNotifier {
  bool _isLightBlue = true;

  // getter
  bool get isLightBlue => _isLightBlue;

  // setter
  set isLightBlue(bool value) {
    _isLightBlue = value;

    // notify
    notifyListeners();
  }

  // execute change
  Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber;
}
