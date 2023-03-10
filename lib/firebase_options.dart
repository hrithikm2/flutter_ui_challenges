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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA7he2Nwsj-zjsleBJV7PT_rePcue1l4ds',
    appId: '1:335033020929:web:a118e3478f76e162454600',
    messagingSenderId: '335033020929',
    projectId: 'bloc-firebase-auth-all',
    authDomain: 'bloc-firebase-auth-all.firebaseapp.com',
    storageBucket: 'bloc-firebase-auth-all.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBU95haY_atf2w9_q7jMlf2UYr4xmn12Tw',
    appId: '1:335033020929:android:8da0a955fa9c72da454600',
    messagingSenderId: '335033020929',
    projectId: 'bloc-firebase-auth-all',
    storageBucket: 'bloc-firebase-auth-all.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBLRl3VqnphKv_Pl1EXpSTrKV4AnrDeA5o',
    appId: '1:335033020929:ios:ed6f3212b0beba69454600',
    messagingSenderId: '335033020929',
    projectId: 'bloc-firebase-auth-all',
    storageBucket: 'bloc-firebase-auth-all.appspot.com',
    iosClientId: '335033020929-211q2hpeuel4dqccgchtclke6iho2lte.apps.googleusercontent.com',
    iosBundleId: 'com.example.verygoodcore.draggable',
  );
}
