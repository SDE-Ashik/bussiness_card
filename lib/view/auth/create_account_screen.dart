

import 'package:busines_card_maker/controller/auth_service.dart';
import 'package:busines_card_maker/view/home/home_page.dart';


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:busines_card_maker/view/auth/widget/custom_text_form_field.dart';
import 'package:busines_card_maker/view/auth/widget/social_login_button.dart';


class CreateAccountScreen extends ConsumerStatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends ConsumerState<CreateAccountScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  String? _errorMessage;

  @override
  Widget build(BuildContext context) {
    final authService = ref.watch(authProvider);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'assest/images/Vector1.png',
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 47),
                        Center(
                          child: Text(
                            'Create account',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Lato',
                              color: Color(0xFF262626),
                            ),
                          ),
                        ),
                        const SizedBox(height: 61),
                        CustomTextField(
                          controller: _usernameController,
                          icon: Icon(Icons.person),
                          label: 'Username',
                          onChanged: (value) {},
                        ),
                        const SizedBox(height: 42),
                        CustomTextField(
                          controller: _passwordController,
                          icon: Icon(Icons.lock),
                          label: 'Password',
                          isPassword: true,
                          onChanged: (value) {},
                        ),
                        const SizedBox(height: 42),
                        CustomTextField(
                          controller: _emailController,
                          icon: Icon(Icons.email),
                          label: 'E-mail',
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) {},
                        ),
                        const SizedBox(height: 42),
                        CustomTextField(
                          controller: _mobileController,
                          icon: Icon(Icons.mobile_friendly),
                          label: 'Mobile',
                          keyboardType: TextInputType.phone,
                          onChanged: (value) {},
                        ),
                        const SizedBox(height: 50),
                        _errorMessage != null
                            ? Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Text(
                                  _errorMessage!,
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 14,
                                  ),
                                ),
                              )
                            : Container(),
                        Row(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: _register,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Create',
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Lato',
                                                color: Color(0xFF262626),
                                              ),
                                            ),
                                            const SizedBox(width: 16),
                                            Image.asset(
                                              'assest/images/Group 3.png',
                                              width: 56,
                                              fit: BoxFit.contain,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 39),
                                      Center(
                                        child: const Text(
                                          'Or create account using social media',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Lato',
                                            color: Color(0xFF262626),
                                          ),
                                        ),
                                      ),
                                      Center(child: const SocialLoginButton()),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        // ElevatedButton(
                        //   onPressed: _register,
                        //   child: Text("Create Account"),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Future<void> _register() async {
  //   if (_formKey.currentState!.validate()) {
  //     try {
  //       // Register the user
  //       final user = await ref.read(authProvider).registerWithEmailPassword(
  //             _emailController.text,
  //             _passwordController.text,
  //           );

  //       if (user != null) {
  //         // Navigate to home screen or desired page upon successful registration
  //         Navigator.pushReplacement(
  //             context,
  //             MaterialPageRoute(
  //                 builder: (context) => CardCreationPage())); // Example route
  //       }
  //     } catch (e) {
  //       setState(() {
  //         _errorMessage = e.toString(); // Display error message
  //       });
  //     }
  //   }
  // }


 Future<void> _register() async {
    if (_formKey.currentState!.validate()) {
      try {
        // Register the user using email and password
        final user = await ref.read(authProvider).registerWithEmailPassword(
              _emailController.text.trim(),
              _passwordController.text.trim(),
            );

        if (user != null) {
          // Save additional user details (username and mobile) to Firestore
          await ref.read(authProvider).saveUserToFirestore(
                user,
                _usernameController.text.trim(),
                _mobileController.text.trim(),
              );

          // Navigate to the HomePage
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        }
      } on FirebaseAuthException catch (e) {
        // Handle Firebase-specific errors
        setState(() {
          _errorMessage = e.message ?? "An error occurred. Please try again.";
        });
      } catch (e) {
        // Handle general errors
        setState(() {
          _errorMessage = "An unexpected error occurred: $e";
        });
      }
    }
  }

}
