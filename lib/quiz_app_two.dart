import 'package:flutter/material.dart';
import 'package:flutter_titled_container/flutter_titled_container.dart';
import 'package:tasks/questions.dart';
import 'package:tasks/score_page.dart';

class Quiz2 extends StatefulWidget {
  const Quiz2({super.key});

  @override
  State<Quiz2> createState() => _Quiz2State();
}

class _Quiz2State extends State<Quiz2> {
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
                          image: DecorationImage(
                              image: AssetImage(
                                  question[index]['image'].toString()),
                              fit: BoxFit.cover)),
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
                            ans = '';
                          });
                        } else {
                          setState(() {
                            ans = '';
                          });
                        }
                        if (index < question.length - 1) {
                          setState(() {
                            index++;
                          });
                        } else {
                          setState(() {
                            index = 0;
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ScorePage(score: score),
                                ));
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
              ],
            ),
          )
        ],
      ),
    ));
  }
}
