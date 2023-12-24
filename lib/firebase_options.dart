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
    apiKey: 'AIzaSyDZHyxoMpEwwLS1lZeFT5wk9igifftShd8',
    appId: '1:1065788196723:web:8de33aee10c0bb1019e706',
    messagingSenderId: '1065788196723',
    projectId: 'ff-auth-9c1ca',
    authDomain: 'ff-auth-9c1ca.firebaseapp.com',
    storageBucket: 'ff-auth-9c1ca.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASmcZX6LAgbD0oA_KJLQ-hgOyfskwHP64',
    appId: '1:1065788196723:android:69986c1bc7251e2019e706',
    messagingSenderId: '1065788196723',
    projectId: 'ff-auth-9c1ca',
    storageBucket: 'ff-auth-9c1ca.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDtU-_JOiD4zpvoSER7d3d5KAhYlqW-jN8',
    appId: '1:1065788196723:ios:414e29e118ad7d9819e706',
    messagingSenderId: '1065788196723',
    projectId: 'ff-auth-9c1ca',
    storageBucket: 'ff-auth-9c1ca.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDtU-_JOiD4zpvoSER7d3d5KAhYlqW-jN8',
    appId: '1:1065788196723:ios:d189088b3fbac08519e706',
    messagingSenderId: '1065788196723',
    projectId: 'ff-auth-9c1ca',
    storageBucket: 'ff-auth-9c1ca.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
