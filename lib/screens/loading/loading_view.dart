import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingScreen extends HookConsumerWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {



    return WillPopScope(
      onWillPop: () async {
        return false; // This will prevent the back action
      },
      child: Scaffold(
        backgroundColor: Color(0xFFf8b7c7), // Will work
        body: Stack(
          children: [
            Positioned(
              bottom: 30,
              right: 20,
              child: Row(
                children: [
                  Text(
                    'Loading   ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  LoadingAnimationWidget.staggeredDotsWave(
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}