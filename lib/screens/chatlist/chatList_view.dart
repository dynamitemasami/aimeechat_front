import 'dart:io';

import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:page_transition/page_transition.dart';

import '../loading/loading_view.dart';


class ChatList extends HookConsumerWidget {


  @override
  Widget build(BuildContext context, ref) {
    var screenHeight = MediaQuery.of(context).size.height;
    //bannerAd.load();

    ListTile createCharacterListTile(
        String characterName, Function onTapCallback) {
      String imagePath = "";
      String displayName = "";


      return ListTile(
        visualDensity: VisualDensity(vertical: 3),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.transparent, width: 0.2),
        ),
        leading: CircleAvatar(
          radius: screenHeight*0.035,
          backgroundImage: AssetImage(imagePath),
        ),
        title: Text(displayName, style: Theme.of(context).textTheme.bodyMedium),
        subtitle: Text(''),
        onTap: () async {
          onTapCallback();

          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.fade, child: LoadingScreen()));
          await Future.delayed(const Duration(seconds: 3));
         /* Navigator.pushReplacement(
              context,
              PageTransition(
                  type: PageTransitionType.fade, child: ChatScreen()));*/
        },
      );
    }



    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Center(
          child: Column(
            children: [
              /* Container(
                width: bannerAd.size.width.toDouble(),
                height: bannerAd.size.height.toDouble(),
                child: bannerAdWidget,
              ),*/

              SizedBox(
                height: screenHeight*0.4,
              ),

            ],
          ),
        ),
        Positioned(
          top: screenHeight*0.65,
          child: GestureDetector(
            onTap: () async {

            },
            child: Image.asset(
              'assets/talk/button_add_friends.png',
              fit: BoxFit.contain,
              height: screenHeight*0.085,
            ),
          ),
        ),
        Positioned(
          right: 30,  // Distance from left
          bottom: 140, // Distance from bottom
          child: FloatingActionButton(
            onPressed: () {

            },
            child: Icon(
              Icons.help_outline, // This icon represents a question mark
              color: Colors.white,
              size: screenHeight*0.05,
            ),
            backgroundColor: Colors.yellow,
          ),
        ),
      ],
    );
  }
}
