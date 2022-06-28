import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomScreen extends StatelessWidget {
  final bool isLogin;
  const BottomScreen({Key? key, required this.isLogin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String signOrRegister = isLogin ? 'Sign in' : 'Register';
    final String hasAccount =
        isLogin ? 'Doesn\'t has any account? ' : 'Has any account? ';
    final String googleAccount = isLogin ? 'Sign in here' : 'Register here';
    final String endMessage = isLogin
        ? 'Use the application according to policy rules. Any \n kinds of violations will be subject to sanctions.'
        : 'By registering your account you are agree to our terms and conditions';
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 25,
          ),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              signOrRegister,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.purple,
              minimumSize: const Size(370, 40),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 2.0,
                margin: const EdgeInsets.only(
                  left: 20,
                ),
                color: Colors.grey,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 3.0),
              child: const Text("OR", style: TextStyle(color: Colors.grey)),
            ),
            Expanded(
              child: Container(
                height: 2.0,
                margin: const EdgeInsets.only(
                  right: 20,
                ),
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 25,
          ),
          child: SignInButtonBuilder(
            onPressed: () {},
            text: 'Sign with by Google',
            backgroundColor: Colors.blueAccent,
            width: 370,
            icon: FontAwesomeIcons.google,
            innerPadding: const EdgeInsets.only(
              left: 100,
            ),
          ),
        ),
        Row(
          children: [
            Container(
              child: Text(hasAccount),
              margin: const EdgeInsets.only(left: 90),
            ),
            Text(
              googleAccount,
              style: const TextStyle(
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
        Container(
          child: Text(endMessage),
          margin: const EdgeInsets.only(
            top: 40,
            left: 30,
          ),
        ),
      ],
    );
  }
}
