// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
// / import 'firebase_options.dart';
// / // ...
// / await Firebase.initializeApp(
// /   options: DefaultFirebaseOptions.currentPlatform,
// / );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBla5wyrFTm0ekFRzll6GDs77_pEHiv2B4',
    appId: '1:961161552655:web:24a1c74b763b879adb947a',
    messagingSenderId: '961161552655',
    projectId: 'aimee-2',
    authDomain: 'aimee-2.firebaseapp.com',
    storageBucket: 'aimee-2.appspot.com',
    measurementId: 'G-TZCCN1K3LV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAaq_0xaIt9zHWtvmr568pXXinJ9SoV_pc',
    appId: '1:961161552655:android:a730aae960dfe9b5db947a',
    messagingSenderId: '961161552655',
    projectId: 'aimee-2',
    storageBucket: 'aimee-2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDVyzyk6UGDyqfpYjEBgVYjnF7e7E_6_b4',
    appId: '1:961161552655:ios:46b7e2a544493788db947a',
    messagingSenderId: '961161552655',
    projectId: 'aimee-2',
    storageBucket: 'aimee-2.appspot.com',
    iosBundleId: 'com.example.aimeechatFront',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDVyzyk6UGDyqfpYjEBgVYjnF7e7E_6_b4',
    appId: '1:961161552655:ios:d4fa6c06a6d8ef3fdb947a',
    messagingSenderId: '961161552655',
    projectId: 'aimee-2',
    storageBucket: 'aimee-2.appspot.com',
    iosBundleId: 'com.example.aimeechatFront.RunnerTests',
  );
}