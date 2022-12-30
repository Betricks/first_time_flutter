import 'package:flutter/material.dart';
import 'package:zohu/logs.dart';
import 'package:zohu/combonents.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final UserController = TextEditingController();
  final PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  const Icon(
                    Icons.android,
                    size: 110,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Create account',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 28,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const LoginUi(
                    hintText: 'Username',
                    abscureText: false,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const LoginUi(
                    hintText: 'Fullname',
                    abscureText: false,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const LoginUi(
                    hintText: 'Password',
                    abscureText: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const LoginUi(
                    hintText: 'Password',
                    abscureText: true,
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(25),
                      margin: const EdgeInsets.symmetric(horizontal: 28),
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(13)),
                      child: const Center(
                          child: Text(
                        'Create',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            thickness: 0.8,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 9.0),
                          child: Text('or continue with'),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.8,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      MyLogo(imagePath: 'images/google2.jpg'),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'have account?',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: const Text('Login here',
                            style: TextStyle(fontSize: 16, color: Colors.blue)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
