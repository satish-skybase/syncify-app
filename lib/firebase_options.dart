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
    apiKey: 'AIzaSyCCFvn8GNpsZtY2bGNo_o49Zu6NFFUPWfQ',
    appId: '1:972429357875:web:78886086763a02c763c446',
    messagingSenderId: '972429357875',
    projectId: 'skybase-apps',
    authDomain: 'skybase-apps.firebaseapp.com',
    databaseURL: 'https://skybase-apps-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'skybase-apps.appspot.com',
    measurementId: 'G-S5JY1C7R09',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBjmjStq5HrG2nnUEslEpaZvCiZTnspCXo',
    appId: '1:972429357875:android:e2d6505a1a1b615663c446',
    messagingSenderId: '972429357875',
    projectId: 'skybase-apps',
    databaseURL: 'https://skybase-apps-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'skybase-apps.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAtSjJkXo7HpcYgdn5Hah1BATpN009rceY',
    appId: '1:972429357875:ios:ac80576b2e89ef2e63c446',
    messagingSenderId: '972429357875',
    projectId: 'skybase-apps',
    databaseURL: 'https://skybase-apps-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'skybase-apps.appspot.com',
    iosClientId: '972429357875-c83lh8go02ad0i6b6a476va8t1d38nsa.apps.googleusercontent.com',
    iosBundleId: 'com.example.dataSyncFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAtSjJkXo7HpcYgdn5Hah1BATpN009rceY',
    appId: '1:972429357875:ios:ac80576b2e89ef2e63c446',
    messagingSenderId: '972429357875',
    projectId: 'skybase-apps',
    databaseURL: 'https://skybase-apps-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'skybase-apps.appspot.com',
    iosClientId: '972429357875-c83lh8go02ad0i6b6a476va8t1d38nsa.apps.googleusercontent.com',
    iosBundleId: 'com.example.dataSyncFlutter',
  );
}
