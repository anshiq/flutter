import 'package:flutproject/resources/auth_methods.dart';
import 'package:flutproject/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          "Start a meeting",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Image.asset('assets/images/onboarding.jpg'),
        custom_button(
          text: 'Google Login',
          onPress: () async {
            bool res = await _authMethods.signInWithGoogle(context);
            if (res) {
              Navigator.pushNamed(context, '/home');
            }
          },
        ),
      ]),
    );
  }
}
