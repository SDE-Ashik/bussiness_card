// import 'package:flutter/material.dart';

// class LoginForm extends StatefulWidget {
//   const LoginForm({Key? key}) : super(key: key);

//   @override
//   _LoginFormState createState() => _LoginFormState();
// }

// class _LoginFormState extends State<LoginForm> {
//   final _formKey = GlobalKey<FormState>();
//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(40),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 20,
//                   offset: const Offset(0, 8),
//                 ),
//               ],
//             ),
//             child: Padding(
              
//               padding: const EdgeInsets.symmetric(vertical: 8),
//               child: TextFormField(
//                 controller: _usernameController,
//                 decoration: InputDecoration(
                  
//                   labelText: 'Email',
//                   prefixIcon: Padding(
//                     padding: const EdgeInsets.all(14),
//                     child: Icon(Icons.email)
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(40),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 41),
//           Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(40),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 20,
//                   offset: const Offset(0, 8),
//                 ),
//               ],
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 8.0),
//               child: TextFormField(
//                 controller: _passwordController,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   prefixIcon: Padding(
//                     padding: const EdgeInsets.all(14),
//                     child: Icon(Icons.lock),
//                   ),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(40),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 34),
//           TextButton(
//             onPressed: () {},
//             child: const Text(
//               'Forgot your password?',
//               style: TextStyle(
//                 color: Color(0xFFBEBEBE),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:busines_card_maker/view/auth/create_account_screen.dart';
// import 'package:busines_card_maker/view/home/home_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class LoginForm extends ConsumerStatefulWidget {
//   const LoginForm({Key? key}) : super(key: key);

//   @override
//   _LoginFormState createState() => _LoginFormState();
// }

// class _LoginFormState extends ConsumerState<LoginForm> {
//   final _formKey = GlobalKey<FormState>();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   bool _isLoading = false;

//   Future<void> _login(BuildContext context) async {
//     if (!_formKey.currentState!.validate()) return;

//     setState(() => _isLoading = true);
//     final authService = ref.read(authProvider);

//     try {
//       await authService.signInWithEmailPassword(
//         _emailController.text.trim(),
//         _passwordController.text.trim(),
//       );
//       // Navigate to HomePage on successful login
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const HomePage()),
//       );
//     } catch (e) {
//       // Show Snackbar on login failure
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text(
//             'Login failed: ${e.toString()}',
//             style: const TextStyle(color: Colors.white),
//           ),
//           backgroundColor: Colors.red,
//         ),
//       );
//     } finally {
//       setState(() => _isLoading = false);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           // Email Field
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 8),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(40),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 20,
//                   offset: const Offset(0, 8),
//                 ),
//               ],
//             ),
//             child: TextFormField(
//               controller: _emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 prefixIcon: const Icon(Icons.email),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(40),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//               validator: (value) => value != null && value.contains('@')
//                   ? null
//                   : 'Enter a valid email',
//             ),
//           ),
//           const SizedBox(height: 30),

//           // Password Field
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 8),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(40),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 20,
//                   offset: const Offset(0, 8),
//                 ),
//               ],
//             ),
//             child: TextFormField(
//               controller: _passwordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 prefixIcon: const Icon(Icons.lock),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(40),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//               validator: (value) => value != null && value.length >= 6
//                   ? null
//                   : 'Password must be at least 6 characters',
//             ),
//           ),
//           const SizedBox(height: 20),
//           TextButton(
//             onPressed: () {
//               // Implement password reset logic here
//             },
//             child: const Text(
//               'Forgot your password?',
//               style: TextStyle(
//                 color: Color(0xFFBEBEBE),
//               ),
//             ),
//           ),
//           const SizedBox(height: 30),

//           // Login Button
//           Padding(
//             padding: const EdgeInsets.only(right: 70),
//             child: InkWell(
//               onTap: _isLoading ? null : () => _login(context),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   const Text(
//                     'Sign in',
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                   const SizedBox(width: 20),
//                   Image.asset('assest/images/Group 3.png', width: 56),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(height: 60),

//           // Register link
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 "Don't have an account? ",
//                 style: TextStyle(fontSize: 15),
//               ),
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const CreateAccountScreen()),
//                   );
//                 },
//                 child: const Text(
//                   'Create',
//                   style: TextStyle(
//                     fontSize: 15,
//                     decoration: TextDecoration.underline,
//                     color: Color(0xFF262626),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:busines_card_maker/view/auth/create_account_screen.dart';
import 'package:busines_card_maker/view/home/home_page.dart';


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:busines_card_maker/controller/auth_service.dart';

class LoginForm extends ConsumerStatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;

  // Login function
  Future<void> _login(BuildContext context) async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);
    final authService =
        ref.read(authProvider); // Read authService from Provider

    try {
      await authService.signInWithEmailPassword(
        _emailController.text.trim(),
        _passwordController.text.trim(),
      );
      // Navigate to HomePage on successful login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  HomePage()),
      );
    } catch (e) {
      // Show Snackbar on login failure
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Login failed',
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Email Field
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide.none,
                ),
              ),
              validator: (value) => value != null && value.contains('@')
                  ? null
                  : 'Enter a valid email',
            ),
          ),
          const SizedBox(height: 30),

          // Password Field
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide.none,
                ),
              ),
              validator: (value) => value != null && value.length >= 6
                  ? null
                  : 'Password must be at least 6 characters',
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              // Implement password reset logic here
            },
            child: const Text(
              'Forgot your password?',
              style: TextStyle(
                color: Color(0xFFBEBEBE),
              ),
            ),
          ),
          const SizedBox(height: 30),

          // Login Button
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Sign in',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
                    onTap: _isLoading ? null : () => _login(context),
                    child: Image.asset('assest/images/Group 3.png',)),
              ],
            ),
          ),
          const SizedBox(height: 60),

          // Register link
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account? ",
                style: TextStyle(fontSize: 15),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateAccountScreen()),
                  );
                },
                child: const Text(
                  'Create',
                  style: TextStyle(
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                    color: Color(0xFF262626),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



// import 'package:busines_card_maker/view/auth/create_account_screen.dart';
// import 'package:busines_card_maker/view/home/home_page.dart';
// import 'package:busines_card_maker/view/home/sample.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:busines_card_maker/controller/auth_service.dart';

// class LoginForm extends ConsumerStatefulWidget {
//   const LoginForm({Key? key}) : super(key: key);

//   @override
//   _LoginFormState createState() => _LoginFormState();
// }

// class _LoginFormState extends ConsumerState<LoginForm> {
//   final _formKey = GlobalKey<FormState>();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   bool _isLoading = false;

//   // Login function
//   Future<void> _login(BuildContext context) async {
//     if (!_formKey.currentState!.validate()) return;

//     setState(() => _isLoading = true);
//     final authService = ref.read(authProvider);

//     try {
//       await authService.signInWithEmailPassword(
//         _emailController.text.trim(),
//         _passwordController.text.trim(),
//       );
//       // Navigate to HomePage on successful login
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => HomePage()),
//       );
//     } catch (e) {
//       // Show Snackbar on login failure
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text(
//             'Login failed ',
//             style: const TextStyle(color: Colors.white),
//           ),
//           backgroundColor: Colors.red,
//         ),
//       );
//     } finally {
//       setState(() => _isLoading = false);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           // Email Field
//           _buildTextFormField(
//             controller: _emailController,
//             label: 'Email',
//             icon: Icons.email,
//             isPassword: false,
//             validator: (value) => value != null && value.contains('@')
//                 ? null
//                 : 'Enter a valid email',
//           ),
//           const SizedBox(height: 20),

//           // Password Field
//           _buildTextFormField(
//             controller: _passwordController,
//             label: 'Password',
//             icon: Icons.lock,
//             isPassword: true,
//             validator: (value) => value != null && value.length >= 6
//                 ? null
//                 : 'Password must be at least 6 characters',
//           ),
//           const SizedBox(height: 40),

//           // Login Button
//         Padding(
//             padding: const EdgeInsets.only(right: 70),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 _isLoading
//                     ? const CircularProgressIndicator(color: Colors.blue)
//                     : const Text(
//                         'Sign in',
//                         style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                 const SizedBox(width: 20),
//                 _isLoading
//                     ? const SizedBox(
//                         width: 24) // Placeholder for spacing while loading
//                     : InkWell(
//                       onTap: _isLoading ? null : () => _login(context),
//                       child: Image.asset(
//                           'assest/images/Group 3.png',
                          
//                         ),
//                     ),
//               ],
//             ),
//           ),

              
//           // ElevatedButton(
//           //   onPressed: _isLoading ? null : () => _login(context),
//           //   child: _isLoading
//           //       ? const CircularProgressIndicator(color: Colors.white)
//           //       : const Text('Sign In'),
//           //   style: ElevatedButton.styleFrom(
//           //     padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//           //     shape: RoundedRectangleBorder(
//           //       borderRadius: BorderRadius.circular(20),
//           //     ),
//           //   ),
//           // ),
//           const SizedBox(height: 20),

//           // Register Link
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text("Don't have an account? "),
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const CreateAccountScreen()),
//                   );
//                 },
//                 child: const Text(
//                   'Create',
//                   style: TextStyle(
//                     decoration: TextDecoration.underline,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildTextFormField({
//     required TextEditingController controller,
//     required String label,
//     required IconData icon,
//     required bool isPassword,
//     required String? Function(String?) validator,
//   }) {
//     return TextFormField(
//       controller: controller,
//       obscureText: isPassword,
//       decoration: InputDecoration(
//         labelText: label,
//         prefixIcon: Icon(icon),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//       ),
//       validator: validator,
//     );
//   }
// }

// import 'package:busines_card_maker/view/auth/create_account_screen.dart';
// import 'package:busines_card_maker/view/home/home_page.dart';
// import 'package:busines_card_maker/view/home/sample.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:busines_card_maker/controller/auth_service.dart';

// class LoginForm extends ConsumerStatefulWidget {
//   const LoginForm({Key? key}) : super(key: key);

//   @override
//   _LoginFormState createState() => _LoginFormState();
// }

// class _LoginFormState extends ConsumerState<LoginForm> {
//   final _formKey = GlobalKey<FormState>();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   bool _isLoading = false;

//   // Login function
//   Future<void> _login(BuildContext context) async {
//     if (!_formKey.currentState!.validate()) return;

//     setState(() => _isLoading = true);
//     final authService = ref.read(authProvider);

//     try {
//       await authService.signInWithEmailPassword(
//         _emailController.text.trim(),
//         _passwordController.text.trim(),
//       );
//       // Navigate to HomePage on successful login
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) =>  HomePage()),
//       );
//     } catch (e) {
//       // Show Snackbar on login failure
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: const Text(
//             'Login failed',
//             style: TextStyle(color: Colors.white),
//           ),
//           backgroundColor: Colors.red,
//         ),
//       );
//     } finally {
//       setState(() => _isLoading = false);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           // Email Field
//           _buildTextFormField(
//             controller: _emailController,
//             label: 'Email',
//             icon: Icons.email,
//             isPassword: false,
//             validator: (value) => value != null && value.contains('@')
//                 ? null
//                 : 'Enter a valid email',
//           ),
//           const SizedBox(height: 20),

//           // Password Field
//           _buildTextFormField(
//             controller: _passwordController,
//             label: 'Password',
//             icon: Icons.lock,
//             isPassword: true,
//             validator: (value) => value != null && value.length >= 6
//                 ? null
//                 : 'Password must be at least 6 characters',
//           ),
//           const SizedBox(height: 40),

//           // Login Button
//           Padding(
//             padding: const EdgeInsets.only(right: 70),
//             child: InkWell(
//               onTap: _isLoading ? null : () => _login(context),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   _isLoading
//                       ? const CircularProgressIndicator(color: Colors.blue)
//                       : const Text(
//                           'Sign in',
//                           style: TextStyle(
//                             fontSize: 25,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                   const SizedBox(width: 20),
//                   _isLoading
//                       ? const SizedBox(
//                           width: 24) // Placeholder for spacing while loading
//                       : Image.asset(
//                           'assest/images/Group 3.png',
//                           height: 40,
//                           width: 40,
//                         ),
//                 ],
//               ),
//             ),
//           ),

//           const SizedBox(height: 20),

//           // Register Link
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text("Don't have an account? "),
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const CreateAccountScreen()),
//                   );
//                 },
//                 child: const Text(
//                   'Create',
//                   style: TextStyle(
//                     decoration: TextDecoration.underline,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildTextFormField({
//     required TextEditingController controller,
//     required String label,
//     required IconData icon,
//     required bool isPassword,
//     required String? Function(String?) validator,
//   }) {
//     return TextFormField(
//       controller: controller,
//       obscureText: isPassword,
//       decoration: InputDecoration(
//         labelText: label,
//         prefixIcon: Icon(icon),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//       ),
//       validator: validator,
//     );
//   }
// }
