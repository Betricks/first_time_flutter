import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  final imagePath;
  const MyLogo({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 87,
        width: 87,
        padding: const EdgeInsets.all(200),
        decoration: BoxDecoration(
            color: Colors.grey[250],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(9)),
        child: Image.asset(
          imagePath,
          height: 50,
          width: 50,
        ));
  }
}
