

import 'package:flutter/material.dart';

import '../colors.dart';


class MyBullet extends StatelessWidget {
  const MyBullet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: const BoxDecoration(
        color: Constants.primaryColor,
        shape: BoxShape.circle,
      ),


    );
  }
}
