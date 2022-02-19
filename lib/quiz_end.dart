import 'package:flutter/material.dart';

class QuizEnd extends StatelessWidget {
  final VoidCallback startAgainHandler;
  int total_score;
  QuizEnd(this.startAgainHandler, this.total_score);
  String get resultPhrase {
    String resultText;
    if (total_score <= 8) {
      resultText = 'You are Awesome and innocent';
    } else if (total_score <= 12) {
      resultText = 'You are a goood Human';
    } else if (total_score <= 12) {
      resultText = 'You are a strange... Human..huh';
    } else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                primary: Colors.black,
                side: BorderSide(
                  color: Colors.black,
                  width: 4
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25))),
            child: OutlinedButton.icon(
              onPressed: startAgainHandler,
              icon: Icon(
                Icons.restart_alt_rounded,
                color: Colors.black,
                size: 40,
              ),
              label: Text(
                'Start Again',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            onPressed: startAgainHandler,
          ),
        ],
      ),
    );
  }
}
