
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn _googleSignIn = GoogleSignIn();

//   Stream<User?> get authState => _auth.authStateChanges();

//   Future<void> signInWithEmailPassword(String email, String password) async {
//     await _auth.signInWithEmailAndPassword(email: email, password: password);
//   }

//   Future<void> registerWithEmailPassword(String email, String password) async {
//     await _auth.createUserWithEmailAndPassword(
//         email: email, password: password);
//   }

//   Future<void> signInWithGoogle() async {
//     final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
//     final GoogleSignInAuthentication? googleAuth =
//         await googleUser?.authentication;

//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth?.accessToken,
//       idToken: googleAuth?.idToken,
//     );

//     await _auth.signInWithCredential(credential);
//   }

//   Future<void> signOut() async {
//     await _auth.signOut();
//     await _googleSignIn.signOut();
//   }
// }
// import 'package:busines_card_maker/model/udr_mode.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// // Define the AuthService provider
// final authProvider = Provider<AuthService>((ref) => AuthService());

// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn _googleSignIn = GoogleSignIn();

//   // Stream of the current authentication state
//   Stream<User?> get authState => _auth.authStateChanges();


//   // Check if a user is authenticated
//   bool isUserLoggedIn() {
//     return _auth.currentUser != null;
//   }

//   // Sign in with email and password
//   Future<User?> signInWithEmailPassword(String email, String password) async {
//     try {
//       final userCredential = await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return userCredential.user;
//     } catch (e) {
//       throw Exception('Failed to sign in with email: ${e.toString()}');
//     }
//   }

//   // // Sign in with email and password
//   // Future<User?> signInWithEmailPassword(String email, String password) async {
//   //   try {
//   //     final UserCredential userCredential =
//   //         await _auth.signInWithEmailAndPassword(
//   //       email: email,
//   //       password: password,
//   //     );
//   //     return userCredential.user;
//   //   } on FirebaseAuthException catch (e) {
//   //     throw Exception('Failed to sign in with email: ${e.message}');
//   //   }
//   // }

//   // Sign in with Google
//   Future<User?> signInWithGoogle() async {
//     try {
//       final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
//       if (googleUser == null) {
//         // The user canceled the sign-in
//         return null;
//       }

//       final GoogleSignInAuthentication googleAuth =
//           await googleUser.authentication;

//       // Create a new credential for Google Sign-In
//       final OAuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );

//       // Sign in with the Google credential
//       final UserCredential userCredential =
//           await _auth.signInWithCredential(credential);
//       return userCredential.user;
//     } on FirebaseAuthException catch (e) {
//       throw Exception('Google sign-in failed: ${e.message}');
//     }
//   }

//   // Sign out from Firebase and Google
//   Future<void> signOut() async {
//     try {
//       await _auth.signOut();
//       await _googleSignIn.signOut();
//     } catch (e) {
//       throw Exception('Failed to sign out: $e');
//     }
//   }

//   // Register a new user with email and password
//   Future<User?> registerWithEmailPassword(String email, String password) async {
//     try {
//       final UserCredential userCredential =
//           await _auth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       return userCredential.user;
//     } on FirebaseAuthException catch (e) {
//       throw Exception('Registration failed: ${e.message}');
//     }
//   }

//   Future<void> saveUserToFirestore(
//       User user, String username, String mobile) async {
//     final userModel = UserModel(
//       uid: user.uid,
//       username: username,
//       email: user.email!,
//       mobile: mobile,
//     );

//     await FirebaseFirestore.instance
//         .collection('users')
//         .doc(user.uid)
//         .set(userModel.toFirestore());
//   }

// }


import 'package:busines_card_maker/model/udr_mode.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// Define the AuthService provider
final authProvider = Provider<AuthService>((ref) => AuthService());

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  AuthService() {
    _initializeNotificationPlugin();
  }

  void _initializeNotificationPlugin() {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  // Stream of the current authentication state
  Stream<User?> get authState => _auth.authStateChanges();

  // Check if a user is authenticated
  bool isUserLoggedIn() {
    return _auth.currentUser != null;
  }

  // Sign in with email and password
  Future<User?> signInWithEmailPassword(String email, String password) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      throw Exception('Failed to sign in with email: ${e.toString()}');
    }
  }

  // Sign in with Google
  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        // The user canceled the sign-in
        return null;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credential for Google Sign-In
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in with the Google credential
      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw Exception('Google sign-in failed: ${e.message}');
    }
  }

  // Sign out from Firebase and Google
  Future<void> signOut() async {
    try {
      await _auth.signOut();
      await _googleSignIn.signOut();
    } catch (e) {
      throw Exception('Failed to sign out: $e');
    }
  }

  // Register a new user with email and password
  Future<User?> registerWithEmailPassword(String email, String password) async {
    try {
      final UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final User? user = userCredential.user;

      if (user != null) {
        // Send notification upon successful registration
        _showRegistrationSuccessNotification(user.email!);
      }

      return user;
    } on FirebaseAuthException catch (e) {
      throw Exception('Registration failed: ${e.message}');
    }
  }

  Future<void> saveUserToFirestore(
      User user, String username, String mobile) async {
    final userModel = UserModel(
      uid: user.uid,
      username: username,
      email: user.email!,
      mobile: mobile,
    );

    await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .set(userModel.toFirestore());
  }

  void _showRegistrationSuccessNotification(String email) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'registration_channel',
      'Registration Notifications',
      channelDescription: 'Notifications for successful registration',
      importance: Importance.high,
      priority: Priority.high,
    );

    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      0, // Notification ID
      'Registration Successful',
      'Welcome $email! Your account has been created successfully.',
      platformChannelSpecifics,
    );
  }
}

