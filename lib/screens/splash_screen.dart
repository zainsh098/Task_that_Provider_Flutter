import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_that/provider/splash_provider.dart';
import 'package:task_that/utils/routes/route_names.dart';

import '../res/components/button.dart';
import '../res/images_constant.dart';

class SplashScreen extends StatelessWidget {


  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('Build before provider ');
    final splashprovider=Provider.of<SplashProvider>(context);


    if (!splashprovider.showButton) {
      splashprovider.showafterdelay();
    }


    dynamic size = MediaQuery.of(context).size;
    dynamic width = size.width;
    double height = size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFE6E6E6),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(
                    ImageConstant.splashlogo,
                  ),
                  height: height * 0.28,
                  width: width * 0.4,
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                Text(
                  'Get things done with ToDo',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: width * 0.05),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  '  Simplify your life and boost your  productivity  \n by organizing your tasks in one place.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: width * 0.035, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Consumer<SplashProvider>(builder: (context,splashProvider,_){
                  const Duration(milliseconds: 300);
                  print("Build  Button Widget");


                  return  splashprovider.showButton
                      ? ButtonWidget(textmessage: 'Get Started', onTap: () {

                    Navigator.pushNamed(context, RouteName.homeScreen);


                  })
                      : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: LinearProgressIndicator(
                      minHeight: 5,

                      color: Colors.deepOrangeAccent.shade100,
                    ),
                  );



                },


                ),



             const   SizedBox(
                  height: 80,
                ),

              ],
            ),
          ),
          const Positioned(
            child: Image(
              image: AssetImage(ImageConstant.shape_image),
            ),
          )
        ],
      ),
    );
  }
}
