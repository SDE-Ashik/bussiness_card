// import 'package:flutter/material.dart';

// class SocialLoginButton extends StatelessWidget {
//   const SocialLoginButton({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(top: 20),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           IconButton(
//             icon: Image.asset('assest/images/facebook.png'),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Image.asset('assest/images/Google.png'),
//             onPressed: () {},
//           ),
//           IconButton(
//             icon: Image.asset('assest/images/Twitter.png'),
//             onPressed: () {},
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:busines_card_maker/view/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:busines_card_maker/controller/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SocialLoginButton extends ConsumerWidget {
  const SocialLoginButton({Key? key}) : super(key: key);

  Future<void> _handleGoogleSignIn(BuildContext context, WidgetRef ref) async {
    final authService = ref.read(authProvider); // Access AuthService
    try {
      final User? user = await authService.signInWithGoogle();
      if (user != null) {
        // // Navigate to HomePage on successful sign-in
        // Navigator.pushReplacementNamed(context, '/home');
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    } catch (e) {
      // Show error message if Google Sign-In fails
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Google Sign-In failed'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Image.asset('assest/images/facebook.png'),
            onPressed: () {
              // Placeholder for Facebook login
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Facebook Sign-In is not implemented yet'),
                ),
              );
            },
          ),
          IconButton(
            icon: Image.asset('assest/images/Google.png'),
            onPressed: () =>
                _handleGoogleSignIn(context, ref), // Call Google Sign-In
          ),
          IconButton(
            icon: Image.asset('assest/images/Twitter.png'),
            onPressed: () {
              // Placeholder for Twitter login
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Twitter Sign-In is not implemented yet'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
