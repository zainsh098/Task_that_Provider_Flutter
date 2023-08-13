import 'package:flutter/cupertino.dart';
import 'package:task_that/utils/routes/route_names.dart';

class SplashProvider extends ChangeNotifier {



  bool _showButton = false;

  bool  get showButton =>_showButton;

  void showafterdelay() async {
    await Future.delayed(const Duration(seconds: 2));
    _showButton = true;

  }

  notifyListeners();

  }

