import 'package:flutter/material.dart';
import 'package:flutter_titled_container/flutter_titled_container.dart';
import 'package:tasks/questions.dart';

class Quiz1 extends StatefulWidget {
  const Quiz1({super.key});

  @override
  State<Quiz1> createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  int qNum = 1;
  int index = 0;
  int score = 0;
  String ans = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TitledContainer(
                title: 'Question $qNum',
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                      alignment: Alignment.center,
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 142, 180, 218),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '${question[index]['question']}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      )),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 30,
              left: 90,
              right: 90,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 400,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        ans = 'True';
                      },
                      child: Text('True')),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 400,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        ans = 'False';
                      },
                      child: Text('False')),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 400,
                  height: 50,
                  child: OutlinedButton(
                      onPressed: () {
                        if (ans == question[index]['answer']) {
                          setState(() {
                            score++;
                          });
                        }
                        if (index < question.length - 1) {
                          setState(() {
                            index++;
                          });
                        } else {
                          setState(() {
                            index = 0;
                          });
                        }
                        if (qNum < question.length) {
                          setState(() {
                            qNum++;
                          });
                        } else {
                          setState(() {
                            qNum = 1;
                          });
                        }
                      },
                      child: Text('Next')),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 400,
                  child: Text('Score: $score'),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
