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
    apiKey: 'AIzaSyAVuHbUqr2pkjC_QpsYPcui3ONrzuxFSno',
    appId: '1:6397758523:web:5c2a520e8b8d7179e5201e',
    messagingSenderId: '6397758523',
    projectId: 'fir-test-a1e06',
    authDomain: 'fir-test-a1e06.firebaseapp.com',
    storageBucket: 'fir-test-a1e06.appspot.com',
    measurementId: 'G-FZECWB2ZS1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB-puHnX3fC9CT79rrGR58yhhKWu0GX2fw',
    appId: '1:6397758523:android:6e674fa14762d53ee5201e',
    messagingSenderId: '6397758523',
    projectId: 'fir-test-a1e06',
    storageBucket: 'fir-test-a1e06.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbjtIjJgtJUVcaunWpMcv0hZ3vYMIDjfk',
    appId: '1:6397758523:ios:e09b980dce0819aee5201e',
    messagingSenderId: '6397758523',
    projectId: 'fir-test-a1e06',
    storageBucket: 'fir-test-a1e06.appspot.com',
    iosBundleId: 'com.example.fireBaseTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbjtIjJgtJUVcaunWpMcv0hZ3vYMIDjfk',
    appId: '1:6397758523:ios:e09b980dce0819aee5201e',
    messagingSenderId: '6397758523',
    projectId: 'fir-test-a1e06',
    storageBucket: 'fir-test-a1e06.appspot.com',
    iosBundleId: 'com.example.fireBaseTest',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAVuHbUqr2pkjC_QpsYPcui3ONrzuxFSno',
    appId: '1:6397758523:web:e8f9639a38244818e5201e',
    messagingSenderId: '6397758523',
    projectId: 'fir-test-a1e06',
    authDomain: 'fir-test-a1e06.firebaseapp.com',
    storageBucket: 'fir-test-a1e06.appspot.com',
    measurementId: 'G-82JM03ZDBX',
  );
}