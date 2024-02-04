// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
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
    apiKey: 'AIzaSyBeeIKA2zjO_CZnVQFNTNOqMVC11P_TtAo',
    appId: '1:581184104493:web:eee021f19e73f3ebdd70a4',
    messagingSenderId: '581184104493',
    projectId: 'mess-management-24853',
    authDomain: 'mess-management-24853.firebaseapp.com',
    storageBucket: 'mess-management-24853.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAMckuvVoeef_IZOv-c75Kd-wVee3TY7qU',
    appId: '1:581184104493:android:d30fb4bffde4283edd70a4',
    messagingSenderId: '581184104493',
    projectId: 'mess-management-24853',
    storageBucket: 'mess-management-24853.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCHusnS1n04oEzcYuLz6OO2ZsmtfUL1gT0',
    appId: '1:581184104493:ios:e2dc4911f7a22893dd70a4',
    messagingSenderId: '581184104493',
    projectId: 'mess-management-24853',
    storageBucket: 'mess-management-24853.appspot.com',
    iosBundleId: 'com.example.learn',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCHusnS1n04oEzcYuLz6OO2ZsmtfUL1gT0',
    appId: '1:581184104493:ios:481c77bc2065570cdd70a4',
    messagingSenderId: '581184104493',
    projectId: 'mess-management-24853',
    storageBucket: 'mess-management-24853.appspot.com',
    iosBundleId: 'com.example.learn.RunnerTests',
  );
}