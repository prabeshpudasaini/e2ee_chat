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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDvyWSUc4adE1RdYCw08Z2uauogwFcZFFc',
    appId: '1:984996087635:android:e27c132183b2f092f9c3a6',
    messagingSenderId: '984996087635',
    projectId: 'e2ee-chat-app-fe852',
    storageBucket: 'e2ee-chat-app-fe852.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClfKVftZvSUGX55n8Qod_EV7Gne2XCm_g',
    appId: '1:984996087635:ios:9b0a6c7fcad96df5f9c3a6',
    messagingSenderId: '984996087635',
    projectId: 'e2ee-chat-app-fe852',
    storageBucket: 'e2ee-chat-app-fe852.appspot.com',
    iosClientId:
        '984996087635-cajin3bn60uaarvbn4u1k6ggkk5j4gvc.apps.googleusercontent.com',
    iosBundleId: 'com.e2eeChat.e2eeChat',
  );
}