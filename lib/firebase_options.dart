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
    apiKey: 'AIzaSyCs8yxwzf_UVIqsaVGyAumar0_i7lYll8I',
    appId: '1:382917360671:web:09c8ed8a7d6c29c122e92a',
    messagingSenderId: '382917360671',
    projectId: 'anasm-48501',
    authDomain: 'anasm-48501.firebaseapp.com',
    storageBucket: 'anasm-48501.firebasestorage.app',
    measurementId: 'G-GDC7KJ7W30',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVXFrEudbDqLKON29q1n3Dxjs70DNjYDU',
    appId: '1:382917360671:android:b758bf7d1573c79322e92a',
    messagingSenderId: '382917360671',
    projectId: 'anasm-48501',
    storageBucket: 'anasm-48501.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCpXchk-x47nqXL0Nd2OlDFuz5nUv0PuG8',
    appId: '1:382917360671:ios:63f5dac5c0768aa822e92a',
    messagingSenderId: '382917360671',
    projectId: 'anasm-48501',
    storageBucket: 'anasm-48501.firebasestorage.app',
    iosBundleId: 'com.example.anasm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCpXchk-x47nqXL0Nd2OlDFuz5nUv0PuG8',
    appId: '1:382917360671:ios:63f5dac5c0768aa822e92a',
    messagingSenderId: '382917360671',
    projectId: 'anasm-48501',
    storageBucket: 'anasm-48501.firebasestorage.app',
    iosBundleId: 'com.example.anasm',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCs8yxwzf_UVIqsaVGyAumar0_i7lYll8I',
    appId: '1:382917360671:web:0cf9986eace870b222e92a',
    messagingSenderId: '382917360671',
    projectId: 'anasm-48501',
    authDomain: 'anasm-48501.firebaseapp.com',
    storageBucket: 'anasm-48501.firebasestorage.app',
    measurementId: 'G-YY8Z717DKQ',
  );

}