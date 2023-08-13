import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_that/provider/splash_provider.dart';
import 'package:task_that/screens/splash_screen.dart';
import 'package:task_that/utils/routes/route_names.dart';
import 'package:task_that/utils/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:[

      ChangeNotifierProvider(create: (_) => SplashProvider()),


    ],
    child:  MaterialApp(
      title: 'Task That ',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      initialRoute: RouteName.splashscreen,
      onGenerateRoute: Routes.generateRoute,


    ),

    );

  }
}
