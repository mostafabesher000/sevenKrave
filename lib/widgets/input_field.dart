import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class InputField extends StatelessWidget {
  final String input;
  const InputField({Key? key, required this.input}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget inputField;
    if (input == 'Phone Number') {
      inputField = InternationalPhoneNumberInput(
        onInputChanged: (value) {},
        cursorColor: Colors.black,
        formatInput: false,
        selectorConfig: const SelectorConfig(
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
        ),
        inputDecoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            bottom: 15,
            left: 0,
          ),
          border: InputBorder.none,
          hintText: 'Eg.812345678',
          hintStyle: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 16,
          ),
        ),
      );
    } else if (input == 'Email') {
      inputField = TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            bottom: 15,
            left: 0,
          ),
          border: InputBorder.none,
          hintText: 'Eg. example@email.com',
          hintStyle: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 16,
          ),
        ),
      );
    } else {
      inputField = TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            bottom: 15,
            left: 0,
          ),
          border: InputBorder.none,
          hintText: 'Password',
          hintStyle: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 16,
          ),
        ),
      );
    }
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(
            top: 40,
            left: 20,
          ),
          child: Text(
            input,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color(0xffeeeeee),
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
            border: Border.all(
              color: Colors.black.withOpacity(0.13),
            ),
          ),
          child: inputField,
        ),
      ],
    );
  }
}
