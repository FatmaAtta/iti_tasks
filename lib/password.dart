import 'package:flutter/material.dart';

class MyPassword extends StatefulWidget {
  const MyPassword({super.key});

  @override
  State<MyPassword> createState() => _MyPasswordState();
}

class _MyPasswordState extends State<MyPassword> {
  bool hide = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    hide = !hide;
                  });
                },
                icon: Icon(hide ? Icons.remove_red_eye : Icons.visibility_off)),
            hintText: 'Password',
            labelText: 'Enter Your Password',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.key)),
        obscureText: hide,
      ),
    );
  }
}
