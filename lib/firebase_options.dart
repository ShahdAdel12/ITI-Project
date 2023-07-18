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
    apiKey: 'AIzaSyBkdYW5u6HT7Sbxj_vecd43yyhxIcIFt_M',
    appId: '1:449057639524:web:99753a045d1cb5a0472371',
    messagingSenderId: '449057639524',
    projectId: 'iti2023training-b9d9e',
    authDomain: 'iti2023training-b9d9e.firebaseapp.com',
    storageBucket: 'iti2023training-b9d9e.appspot.com',
    measurementId: 'G-X9CF4GHYBC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_kBRuaeCwE3C3rbVVfMFuSmy8UrLilxQ',
    appId: '1:449057639524:android:b97f64070054fd79472371',
    messagingSenderId: '449057639524',
    projectId: 'iti2023training-b9d9e',
    storageBucket: 'iti2023training-b9d9e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAy4wr-2g2Ne6rpKElGwX8Vo3JtSQ9DzmA',
    appId: '1:449057639524:ios:6ac1bf2df61903e0472371',
    messagingSenderId: '449057639524',
    projectId: 'iti2023training-b9d9e',
    storageBucket: 'iti2023training-b9d9e.appspot.com',
    iosClientId: '449057639524-uc2s1m6fpl4j05p09ip88a1bll4qpgud.apps.googleusercontent.com',
    iosBundleId: 'com.example.login',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAy4wr-2g2Ne6rpKElGwX8Vo3JtSQ9DzmA',
    appId: '1:449057639524:ios:995fdbeda9dfab58472371',
    messagingSenderId: '449057639524',
    projectId: 'iti2023training-b9d9e',
    storageBucket: 'iti2023training-b9d9e.appspot.com',
    iosClientId: '449057639524-l724o7gfkhd8bt50lvkfh1n5a285ma73.apps.googleusercontent.com',
    iosBundleId: 'com.example.login.RunnerTests',
  );
}
