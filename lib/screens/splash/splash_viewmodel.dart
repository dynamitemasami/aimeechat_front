import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreenViewModel {
  var logoimage = "assets/top/aimee_logo.png";

  Future<void> startTimer(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));
    if (context.mounted) {
     /* Navigator.pushReplacement(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          child: const Login(),
        ),
      );*/
    }
  }
}
