import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
      
          child: Image.asset(
          
            'assest/images/Vector1.png',
            width: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 40),
        const Text(
          'Hello',
          style: TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 40),
        const Text(
          'Sign in to your account',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}