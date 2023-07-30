import 'package:flutter/material.dart';
import 'package:tasks/password.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 90,
        ),
        SizedBox(
            width: 400,
            height: 80,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Email',
                labelText: 'Enter Your Email',
                prefixIcon: Icon(Icons.email_outlined),
              ),
            )),
        MyPassword(),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 50,
          width: 400,
          child: ElevatedButton(onPressed: () {}, child: Text('Log In')),
        ),
      ],
    );
  }
}
