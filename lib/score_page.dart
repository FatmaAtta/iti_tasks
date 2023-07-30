import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tasks/quiz_app_two.dart';

class ScorePage extends StatelessWidget {
  final int score;
  final double perc;
  ScorePage({required this.score}) : perc = (score / 10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
                alignment: Alignment.center,
                width: 400,
                height: 50,
                child: Text(
                  'Score: $score',
                  style: TextStyle(fontSize: 50),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 50,
            ),
            Container(
              child: CircularPercentIndicator(
                radius: 200,
                lineWidth: 40,
                percent: perc,
                progressColor: const Color.fromARGB(255, 99, 39, 106),
                backgroundColor: const Color.fromARGB(31, 142, 180, 218),
                circularStrokeCap: CircularStrokeCap.round,
              ),
            ),
            Container(
                width: 400,
                height: 120,
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Quiz2(),
                            ));
                      },
                      child: Text('Back')),
                )),
          ],
        ),
      ),
    );
  }
}
