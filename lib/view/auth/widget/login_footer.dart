import 'package:busines_card_maker/view/auth/create_account_screen.dart';
import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        Padding(
          padding: EdgeInsets.only(right: 70),
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
              const SizedBox(width: 16),
              Image.asset('assest/images/Group 3.png', width: 56),
            ],
          ),
        ),
        const SizedBox(height: 95),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't have an account? ",
              style: TextStyle(fontSize: 15),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccountScreen()));
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
         Align(alignment:Alignment.bottomLeft,
        
         
         
        child: Container(width: 200,
        height: 100,
          child: Image.asset("assest/images/Vector2.png", fit: BoxFit.cover, )),
          ),

      ],
    );
  }
}
