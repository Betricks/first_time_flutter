import 'package:flutter/material.dart';

class LoginUi extends StatelessWidget {
  final controler;
  final hintText;
  final abscureText;
  final SufixIcon;
  const LoginUi(
      {super.key,
      this.SufixIcon,
      this.controler,
      required this.abscureText,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: abscureText,
        controller: controler,
        decoration: InputDecoration(
          suffixIcon: SufixIcon,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 102, 148, 229))),
          fillColor: Colors.grey.shade100,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey[500],
            fontSize: 19,
            wordSpacing: 10,
          ),
        ),
      ),
    );
  }
}
