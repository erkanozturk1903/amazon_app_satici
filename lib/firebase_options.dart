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
    apiKey: 'AIzaSyDjMpBcL5Q6DY_G1XPzz7gRT6FFv93u0hQ',
    appId: '1:1013005205615:web:3166eceacff501a5940d9a',
    messagingSenderId: '1013005205615',
    projectId: 'app-3da8a',
    authDomain: 'app-3da8a.firebaseapp.com',
    storageBucket: 'app-3da8a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAsJoH30NDJJrsgBmDxn-QenjbAJvFV1hA',
    appId: '1:1013005205615:android:6481f96a5444f8b2940d9a',
    messagingSenderId: '1013005205615',
    projectId: 'app-3da8a',
    storageBucket: 'app-3da8a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFJI9lorQw2_GELqlRWpcfXYuqGnNdWrg',
    appId: '1:1013005205615:ios:84ffcb74c3e4ea98940d9a',
    messagingSenderId: '1013005205615',
    projectId: 'app-3da8a',
    storageBucket: 'app-3da8a.appspot.com',
    androidClientId: '1013005205615-58l63djsa09sh6304g8bs97sqitha4hh.apps.googleusercontent.com',
    iosClientId: '1013005205615-mlt436i0p4qh31rpull9prsvon3nl771.apps.googleusercontent.com',
    iosBundleId: 'com.erkanozturk.amazonAppSatici',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAFJI9lorQw2_GELqlRWpcfXYuqGnNdWrg',
    appId: '1:1013005205615:ios:84ffcb74c3e4ea98940d9a',
    messagingSenderId: '1013005205615',
    projectId: 'app-3da8a',
    storageBucket: 'app-3da8a.appspot.com',
    androidClientId: '1013005205615-58l63djsa09sh6304g8bs97sqitha4hh.apps.googleusercontent.com',
    iosClientId: '1013005205615-mlt436i0p4qh31rpull9prsvon3nl771.apps.googleusercontent.com',
    iosBundleId: 'com.erkanozturk.amazonAppSatici',
  );
}
