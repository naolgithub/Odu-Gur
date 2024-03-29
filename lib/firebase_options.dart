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
    apiKey: 'AIzaSyCUZwdTd2EtOC4TfbePSw---9x_mgE7lYc',
    appId: '1:415947907483:web:0febcd747decba878cc13e',
    messagingSenderId: '415947907483',
    projectId: 'data-collection-8354d',
    authDomain: 'data-collection-8354d.firebaseapp.com',
    storageBucket: 'data-collection-8354d.appspot.com',
    measurementId: 'G-CHNTX2SYZ6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAyoecsAbZNG-ZeAVocdQGLlH_nGfokjgo',
    appId: '1:415947907483:android:5752869102a3392b8cc13e',
    messagingSenderId: '415947907483',
    projectId: 'data-collection-8354d',
    storageBucket: 'data-collection-8354d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC2QuL1H61nENnQSc8no9_QZnHh-orjXJI',
    appId: '1:415947907483:ios:3f6f79e6fbe8c42f8cc13e',
    messagingSenderId: '415947907483',
    projectId: 'data-collection-8354d',
    storageBucket: 'data-collection-8354d.appspot.com',
    iosClientId: '415947907483-u3ppv0fuu4j8jjtsk3nif7fa34oidd4o.apps.googleusercontent.com',
    iosBundleId: 'com.example.odugur',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC2QuL1H61nENnQSc8no9_QZnHh-orjXJI',
    appId: '1:415947907483:ios:95aa25a8f5d6d4198cc13e',
    messagingSenderId: '415947907483',
    projectId: 'data-collection-8354d',
    storageBucket: 'data-collection-8354d.appspot.com',
    iosClientId: '415947907483-m00j9r3h8klttjbvnvp3rk8idt6cprsm.apps.googleusercontent.com',
    iosBundleId: 'com.example.odugur.RunnerTests',
  );
}
