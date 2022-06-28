import 'package:flutter/material.dart';
import 'package:task_1/widgets/bottom_screen.dart';
import 'package:task_1/widgets/input_field.dart';
import 'package:task_1/widgets/top_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TopScreen(
              height: 70,
              isLogin: false,
            ),
            InputField(input: 'Email'),
            InputField(input: 'Phone Number'),
            InputField(input: 'Password'),
            BottomScreen(isLogin: false),
          ],
        ),
      ),
    );
  }
}
