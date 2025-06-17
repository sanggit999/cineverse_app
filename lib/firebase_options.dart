import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyDnzTWrlbg6wmougPYwngLOEyQ0WxcAZCU',
    appId: '1:482721314528:web:0990b6772c01f9da1cc285',
    messagingSenderId: '482721314528',
    projectId: 'cineverse-99999',
    authDomain: 'cineverse-99999.firebaseapp.com',
    storageBucket: 'cineverse-99999.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBYU443A6G5CpkDBpnVrre61Iv33GtU2Q0',
    appId: '1:482721314528:android:0ab278821f95a5a01cc285',
    messagingSenderId: '482721314528',
    projectId: 'cineverse-99999',
    storageBucket: 'cineverse-99999.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCs18oX7EdtDE0zk5fK9hauyoZ-gpdWC40',
    appId: '1:482721314528:ios:7759318d1439ebe81cc285',
    messagingSenderId: '482721314528',
    projectId: 'cineverse-99999',
    storageBucket: 'cineverse-99999.firebasestorage.app',
    iosBundleId: 'com.example.cineverseApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCs18oX7EdtDE0zk5fK9hauyoZ-gpdWC40',
    appId: '1:482721314528:ios:7759318d1439ebe81cc285',
    messagingSenderId: '482721314528',
    projectId: 'cineverse-99999',
    storageBucket: 'cineverse-99999.firebasestorage.app',
    iosBundleId: 'com.example.cineverseApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDnzTWrlbg6wmougPYwngLOEyQ0WxcAZCU',
    appId: '1:482721314528:web:2b5f9e90a290b3281cc285',
    messagingSenderId: '482721314528',
    projectId: 'cineverse-99999',
    authDomain: 'cineverse-99999.firebaseapp.com',
    storageBucket: 'cineverse-99999.firebasestorage.app',
  );
}
