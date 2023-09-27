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
    apiKey: 'AIzaSyA3dZaZ8wCZC0k-hITc5QeARCXgTrjsfZE',
    appId: '1:651269676503:web:dc876172bb1a691c353f92',
    messagingSenderId: '651269676503',
    projectId: 'massege-c61d0',
    authDomain: 'massege-c61d0.firebaseapp.com',
    storageBucket: 'massege-c61d0.appspot.com',
    measurementId: 'G-0WYCBP8B2B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBob3iHoe4fyEZ1Xey-pBP1nkxit2wcL5k',
    appId: '1:651269676503:android:888da935e28b74ad353f92',
    messagingSenderId: '651269676503',
    projectId: 'massege-c61d0',
    storageBucket: 'massege-c61d0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8z-7E9zztyweNleSLQSvu6BE9WFgMlyk',
    appId: '1:651269676503:ios:06674bc726d60411353f92',
    messagingSenderId: '651269676503',
    projectId: 'massege-c61d0',
    storageBucket: 'massege-c61d0.appspot.com',
    iosClientId: '651269676503-eqdfjv0pbvqqhr85fqq5573qgpk9fm9l.apps.googleusercontent.com',
    iosBundleId: 'com.example.moleculargenetics',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC8z-7E9zztyweNleSLQSvu6BE9WFgMlyk',
    appId: '1:651269676503:ios:06674bc726d60411353f92',
    messagingSenderId: '651269676503',
    projectId: 'massege-c61d0',
    storageBucket: 'massege-c61d0.appspot.com',
    iosClientId: '651269676503-eqdfjv0pbvqqhr85fqq5573qgpk9fm9l.apps.googleusercontent.com',
    iosBundleId: 'com.example.moleculargenetics',
  );
}