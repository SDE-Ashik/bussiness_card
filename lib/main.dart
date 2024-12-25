// // // import 'package:busines_card_maker/view/auth/login_screen.dart';
// // // import 'package:busines_card_maker/view/cards/business_card1.dart';
// // // import 'package:busines_card_maker/view/cards/business_card2.dart';
// // // import 'package:busines_card_maker/view/home/home_page.dart';
// // // import 'package:busines_card_maker/view/home/template_selection_page.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_riverpod/flutter_riverpod.dart';
// // // import 'package:firebase_core/firebase_core.dart';

// // // void main() async {
// // //   WidgetsFlutterBinding.ensureInitialized();
// // //   await Firebase.initializeApp(); // Initialize Firebase
// // //   runApp(const ProviderScope(child: MyApp())); // Wrap app with ProviderScope
// // // }

// // // class MyApp extends StatelessWidget {
// // //   const MyApp({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       title: 'Business Card Maker',
// // //       theme: ThemeData(
// // //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// // //         useMaterial3: true,
// // //       ),
// // //       home:LoginScreen(),
// // //       // CardCreationPage(),// Set LoginScreen as the home screen
// // //       debugShowCheckedModeBanner: false, // Remove the debug banner
// // //     );
// // //   }
// // // }

// import 'package:busines_card_maker/view/auth/login_screen.dart';
// import 'package:busines_card_maker/view/home/home_page.dart';
// import 'package:busines_card_maker/view/cards/business_card1.dart';
// import 'package:busines_card_maker/view/home/sample.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(); // Initialize Firebase
//   runApp(const ProviderScope(child: MyApp())); // Wrap app with ProviderScope
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Business Card Maker',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home:
//           AuthWrapper(), // Use AuthWrapper to handle login and home page routing
//       debugShowCheckedModeBanner: false, // Remove the debug banner
//     );
//   }
// }

// // AuthWrapper widget to listen for user authentication state
// class AuthWrapper extends ConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return StreamBuilder<User?>(
//       stream: FirebaseAuth.instance
//           .authStateChanges(), // Listen for auth state changes
//       builder: (context, snapshot) {
//         // Check if auth state is still loading or error
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return CircularProgressIndicator(); // Show loading spinner while checking auth state
//         }

//         // If the user is logged in, navigate to HomePage
//         if (snapshot.hasData) {
//           return HomePage();
//           // CardCreationPage(); // Replace with your home page widget
//         } else {
//           // If the user is not logged in, show the login page
//           return LoginScreen(); // Replace with your login screen widget
//         }
//       },
//     );
//   }
// }
// // import 'package:busines_card_maker/view/auth/login_screen.dart';
// // import 'package:busines_card_maker/view/home/sample.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/material.dart';

// // class AuthWrapper extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return StreamBuilder<User?>(
// //       stream: FirebaseAuth.instance.authStateChanges(),
// //       builder: (context, snapshot) {
// //         if (snapshot.connectionState == ConnectionState.waiting) {
// //           // Show a loading indicator while checking auth state
// //           return const Center(child: CircularProgressIndicator());
// //         }
// //         if (snapshot.hasData) {
// //           // User is logged in, show the HomePage
// //           return HomePage();
// //         } else {
// //           // User is not logged in, show the LoginPage
// //           return LoginScreen(); // Replace with your actual login page
// //         }
// //       },
// //     );
// //   }
// // }

// import 'package:busines_card_maker/view/home/sample.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';
// import 'package:firebase_analytics/observer.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';

// import 'package:busines_card_maker/view/auth/login_screen.dart';
// import 'package:busines_card_maker/view/home/home_page.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(); // Initialize Firebase

//   // Set up Firebase Crashlytics for error reporting
//   FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

//   runApp(const ProviderScope(child: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Business Card Maker',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const AuthWrapper(), // Wrapper to handle authentication state
//       navigatorObservers: [
//         FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
//       ],
//       debugShowCheckedModeBanner: false, // Remove the debug banner
//     );
//   }
// }

// class AuthWrapper extends ConsumerWidget {
//   const AuthWrapper({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return StreamBuilder<User?>(
//       stream: FirebaseAuth.instance.authStateChanges(), // Listen for auth state
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           // Show a loading spinner while checking auth state
//           return const Center(child: CircularProgressIndicator());
//         }

//         // Navigate to HomePage if user is logged in
//         if (snapshot.hasData) {
//           return  HomePage();
//         } else {
//           // Show LoginScreen if user is not logged in
//           return const LoginScreen();
//         }
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:busines_card_maker/controller/firebase_dynamic_links.dart';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'package:busines_card_maker/view/auth/login_screen.dart';
import 'package:busines_card_maker/view/home/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase

  // Set up Firebase Crashlytics for error reporting
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  runApp(const ProviderScope(child: MyApp()));
  //Remove this method to stop OneSignal Debugging
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);

  OneSignal.initialize("39959f8a-234b-444c-a324-988d6e7c8ccf");

// The promptForPushNotificationsWithUserResponse function will show the iOS or Android push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
  OneSignal.Notifications.requestPermission(true);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business Card Maker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AuthWrapper(), // Wrapper to handle authentication state
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
      ],
      debugShowCheckedModeBanner: false, // Remove the debug banner
    );
  }
}

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  _AuthWrapperState createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  User? _currentUser;

  @override
  void initState() {
    super.initState();
    _initializeUser();
  }

  Future<void> _initializeUser() async {
    // Check the current user during initialization
    setState(() {
      _currentUser = FirebaseAuth.instance.currentUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Show a loading spinner while the user state is initializing
    if (_currentUser == null) {
      return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasData) {
            return HomePage();
          } else {
            return const LoginScreen();
          }
        },
      );
    }

    // If user is already authenticated, directly show the HomePage
    return HomePage();
  }
}
