// import 'package:busines_card_maker/view/auth/widget/login_footer.dart';
// import 'package:busines_card_maker/view/auth/widget/login_form.dart';
// import 'package:busines_card_maker/view/auth/widget/login_header.dart';
// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const LoginHeader(),
//               SizedBox(height: size.height * 0.05),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 24.0),
//                 child: LoginForm(),
//               ),
//               SizedBox(height: size.height * 0.05),
//               const LoginFooter(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:busines_card_maker/view/auth/widget/login_footer.dart';
import 'package:busines_card_maker/view/auth/widget/login_form.dart';
import 'package:busines_card_maker/view/auth/widget/login_header.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const LoginHeader(),
              SizedBox(height: size.height * 0.05),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: LoginForm(), // Login Form with Auth Integration
              ),
              SizedBox(height: size.height * 0.05),
              // const LoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
