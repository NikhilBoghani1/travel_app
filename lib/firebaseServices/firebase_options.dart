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
    apiKey: 'AIzaSyB0RqM3PFshpXsDVkaIo4ifwerfAkeql_E',
    appId: '1:373065739229:web:acf7c4cc91d1523f98e434',
    messagingSenderId: '373065739229',
    projectId: 'aboutsurat-9b189',
    authDomain: 'aboutsurat-9b189.firebaseapp.com',
    storageBucket: 'aboutsurat-9b189.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCp_Zz5s3fzCAp6f0tVeeh_4InAe8_nfNQ',
    appId: '1:373065739229:android:2aed9c137fb2f41898e434',
    messagingSenderId: '373065739229',
    projectId: 'aboutsurat-9b189',
    storageBucket: 'aboutsurat-9b189.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDiTm77LRggY8JifGG-uPZu3KZqYehDJT4',
    appId: '1:373065739229:ios:61eb18dd862d052098e434',
    messagingSenderId: '373065739229',
    projectId: 'aboutsurat-9b189',
    storageBucket: 'aboutsurat-9b189.appspot.com',
    iosBundleId: 'com.example.travelApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDiTm77LRggY8JifGG-uPZu3KZqYehDJT4',
    appId: '1:373065739229:ios:61eb18dd862d052098e434',
    messagingSenderId: '373065739229',
    projectId: 'aboutsurat-9b189',
    storageBucket: 'aboutsurat-9b189.appspot.com',
    iosBundleId: 'com.example.travelApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB0RqM3PFshpXsDVkaIo4ifwerfAkeql_E',
    appId: '1:373065739229:web:c9eb66880f89da1b98e434',
    messagingSenderId: '373065739229',
    projectId: 'aboutsurat-9b189',
    authDomain: 'aboutsurat-9b189.firebaseapp.com',
    storageBucket: 'aboutsurat-9b189.appspot.com',
  );
}
