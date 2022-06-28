import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopScreen extends StatelessWidget {
  final double height;
  final bool isLogin;
  const TopScreen({Key? key, required this.height, required this.isLogin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String signOrRegister = isLogin ? 'Sign in' : 'Register';
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: height,
          decoration: const BoxDecoration(
            color: Color(0xFFBA68C8),
          ),
          child: Container(
            margin: const EdgeInsets.only(left: 20, top: 20),
            child: isLogin ? null : Image.asset('images/backarrow.png'),
            alignment: Alignment.topLeft,
          ),
        ),
        Container(
          child: const Text(
            'Welcome to Fashion Daily',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(top: 20, left: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text(
                signOrRegister,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 20, left: 20),
            ),
            const Spacer(),
            Container(
              child: const Text(
                'Help',
                style: TextStyle(
                  color: Color(0xFFBA68C8),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              alignment: Alignment.topRight,
              margin: const EdgeInsets.only(top: 20, right: 5),
            ),
            Container(
              child: const Icon(
                FontAwesomeIcons.solidQuestionCircle,
                color: Color(0xFFBA68C8),
              ),
              alignment: Alignment.topRight,
              margin: const EdgeInsets.only(top: 20, right: 20),
            )
          ],
        )
      ],
    );
  }
}
