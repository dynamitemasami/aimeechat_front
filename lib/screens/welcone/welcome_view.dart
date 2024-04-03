import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:io';

import 'package:page_transition/page_transition.dart';

import '../chatlist/chatList_view.dart';

final termsAcceptedProvider = StateProvider<bool>((ref) => false);

class WelcomeScreen extends HookConsumerWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var termsAccepted = ref.watch(termsAcceptedProvider.state);



    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/top/top.gif'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          // Center widget to center its child
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // Center the column's children vertically
            children: [
              SizedBox(height: screenHeight*0.5),
              // Spacing between elements
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: termsAccepted.state,
                    onChanged: (bool? value) {
                      termsAccepted.state = value!;
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('利用規約'),
                            content: SingleChildScrollView(
                              child: Text(
                               ""
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: Text('閉じる'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );

                    },
                    child: Text(
                        '利用規約に同意する',
                        style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          color: Colors.brown,
                          fontFamily: "Noto_Sans_JP",
                        ),
                      ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.white,
                  fixedSize: Size( screenWidth*0.75, screenHeight*0.05), // Text color
                ),
                onPressed: () async {
                  Navigator.pushReplacement(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: ChatList(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/google_logo.png', height: 24.0),
                    // Apple logo
                    SizedBox(width: 8.0),
                    // Space between logo and text
                    Text(
                      'Googleでサインイン',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),


              const SizedBox(height: 25),
              if (Platform.isIOS)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Color(0xFFf8b7c7),
                    fixedSize: Size( screenWidth*0.75, screenHeight*0.05), // Text color
                  ),
                  onPressed: () async {

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/top/apple-logo.png', height: 24.0),
                      // Apple logo
                      SizedBox(width: 8.0),
                      // Space between logo and text
                      Text(
                        'Appleでサインイン',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
