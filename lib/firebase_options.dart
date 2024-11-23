// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAAd846cqlbuTNPd3-sJVG5MGEl4NzN4vA',
    appId: '1:789734977427:web:27c2d04d2d6187e1510266',
    messagingSenderId: '789734977427',
    projectId: 'dginventory-d9593',
    authDomain: 'dginventory-d9593.firebaseapp.com',
    storageBucket: 'dginventory-d9593.firebasestorage.app',
    measurementId: 'G-Z7C5MPFLC4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCOhRxX55vzWAP8dDUa6L6nyrQQeWWWCHA',
    appId: '1:789734977427:android:51c48a247e779413510266',
    messagingSenderId: '789734977427',
    projectId: 'dginventory-d9593',
    storageBucket: 'dginventory-d9593.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCxPG9m6RCchoHHy2f5Cj_Ed0afFs1BhoY',
    appId: '1:789734977427:ios:e25b2c0e1bada766510266',
    messagingSenderId: '789734977427',
    projectId: 'dginventory-d9593',
    storageBucket: 'dginventory-d9593.firebasestorage.app',
    iosBundleId: 'com.example.dgi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCxPG9m6RCchoHHy2f5Cj_Ed0afFs1BhoY',
    appId: '1:789734977427:ios:e25b2c0e1bada766510266',
    messagingSenderId: '789734977427',
    projectId: 'dginventory-d9593',
    storageBucket: 'dginventory-d9593.firebasestorage.app',
    iosBundleId: 'com.example.dgi',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAAd846cqlbuTNPd3-sJVG5MGEl4NzN4vA',
    appId: '1:789734977427:web:7694a16af56ef06e510266',
    messagingSenderId: '789734977427',
    projectId: 'dginventory-d9593',
    authDomain: 'dginventory-d9593.firebaseapp.com',
    storageBucket: 'dginventory-d9593.firebasestorage.app',
    measurementId: 'G-5GDKZEXZ6D',
  );
}
