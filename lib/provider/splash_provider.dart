import 'package:flutter/cupertino.dart';
import 'package:task_that/utils/routes/route_names.dart';

class SplashProvider extends ChangeNotifier {



  bool _showButton = false;

  bool  get showButton =>_showButton;
  bool _delayCompleted = false;
  bool get delayCompleted => _delayCompleted;
  void showafterdelay() async {
    if (!_delayCompleted) {
      _delayCompleted = true;
      await Future.delayed(const Duration(seconds: 2));
      _showButton = true;
      notifyListeners();
    }
  }
}


