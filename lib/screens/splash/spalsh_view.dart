import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'splash_viewmodel.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Starting the timer when the screen is built
    SplashScreenViewModel().startTimer(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  SplashScreenViewModel().logoimage,
                  // Replace with your actual image path
                  width: MediaQuery.of(context).size.height * 0.4,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(100.0),
              child: LoadingAnimationWidget.threeArchedCircle(
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
