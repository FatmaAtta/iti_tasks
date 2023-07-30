import 'package:flutter/material.dart';
import 'package:tasks/quiz_app_one.dart';
import 'package:tasks/quiz_app_two.dart';

import 'image_switch.dart';
import 'login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            title: Text('Tasks'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 92, 6, 122),
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Color.fromARGB(255, 192, 148, 201),
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              tabs: [
                Tab(
                  text: 'Log In',
                ),
                Tab(
                  text: 'Image Switch',
                ),
                Tab(
                  text: 'Quiz App 1',
                ),
                Tab(
                  text: 'Quiz App 2',
                )
              ],
            )),
        body: TabBarView(
          children: [
            Login(),
            ImageSwitch(),
            Quiz1(),
            Quiz2(),
          ],
        ),
      ),
    );
  }
}
