import 'package:flutter/material.dart';
import 'package:tasks/home.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepPurple,
          primaryTextTheme: Typography.blackRedmond),
      home: Home(),
    );
  }
}
