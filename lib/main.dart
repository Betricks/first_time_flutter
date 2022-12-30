import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zohu/login.dart';
import 'package:zohu/register.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => const LoginApp(),
      '/home': (context) => const Myapp(),
      '/signup': (context) => const SignUp(),
    },
  ));
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: ((context) {
          return CupertinoAlertDialog(
            title: const Text('Logout'),
            content: const Text('Do you want logout?'),
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: const Text('yes'),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('no'),
              ),
            ],
          );
        }));
  }

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home Par'),
          actions: [
            GestureDetector(
                onTap: _showDialog, child: const Icon(Icons.logout_rounded))
          ],
        ),
        body: PageView(
            scrollDirection: Axis.vertical,
            controller: _controller,
            children: [
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.blueGrey,
              ),
            ]),
      ),
    );
  }
}
