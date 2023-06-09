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
    apiKey: 'AIzaSyD27flpekc9UeAmRk79MQfnnjE8mWvVPTc',
    appId: '1:917931441825:web:2f625116283ba8403efae0',
    messagingSenderId: '917931441825',
    projectId: 'pico-app-e0019',
    authDomain: 'pico-app-e0019.firebaseapp.com',
    storageBucket: 'pico-app-e0019.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCEPrg3d9rw4rV09O7ccBQniPNFVOlndOA',
    appId: '1:917931441825:android:880a9bfe5c0d7bc03efae0',
    messagingSenderId: '917931441825',
    projectId: 'pico-app-e0019',
    storageBucket: 'pico-app-e0019.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCdId_uk4fWMdOc5woTs6R1m98kcJCcHN0',
    appId: '1:917931441825:ios:b76f2940f9283c5b3efae0',
    messagingSenderId: '917931441825',
    projectId: 'pico-app-e0019',
    storageBucket: 'pico-app-e0019.appspot.com',
    iosClientId: '917931441825-jqgv8i6dhlvijb8jf3ti5te9nuh955pp.apps.googleusercontent.com',
    iosBundleId: 'com.example.riveAnimation',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCdId_uk4fWMdOc5woTs6R1m98kcJCcHN0',
    appId: '1:917931441825:ios:b76f2940f9283c5b3efae0',
    messagingSenderId: '917931441825',
    projectId: 'pico-app-e0019',
    storageBucket: 'pico-app-e0019.appspot.com',
    iosClientId: '917931441825-jqgv8i6dhlvijb8jf3ti5te9nuh955pp.apps.googleusercontent.com',
    iosBundleId: 'com.example.riveAnimation',
  );
}
