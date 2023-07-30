import 'package:flutter/material.dart';

import 'package:tasks/form.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: (Image.asset(
              'assets/square.jpg',
              height: 200,
            )),
          ),
          MyForm(),
        ],
      )),
    );
  }
}
