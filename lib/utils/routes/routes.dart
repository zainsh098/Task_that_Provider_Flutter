

import 'package:flutter/material.dart';
import 'package:task_that/screens/home_screen.dart';
import 'package:task_that/screens/splash_screen.dart';
import 'package:task_that/utils/routes/route_names.dart';

class Routes{

  static Route<dynamic> generateRoute(RouteSettings settings)
  {

    switch(settings.name) {
      case RouteName.splashscreen:
        return MaterialPageRoute(builder: (BuildContext context) => SplashScreen());
      case RouteName.homeScreen:
        return  MaterialPageRoute(builder: (BuildContext context) =>  const HomeScreen());


      default:
        return MaterialPageRoute(builder: (BuildContext context) {
          return const Scaffold(
            body: Center(child: Text('No Screen Found Error!'),),


          );



        });
    }






  }






}