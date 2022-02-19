import 'package:flutter/material.dart';
import 'package:flutter_section_2/quiz_end.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _question_index = 0;
  List<Map<String, Object>> _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Abhi', 'score': 1},
        {'text': 'Abhi', 'score': 1},
        {'text': 'Abhi', 'score': 1},
        {'text': 'Abhi', 'score': 1},
      ],
    },
  ];
  int _total_score = 0;
  void _answer_questions(int score) {
    _total_score = _total_score + score;
    setState(() {
      _question_index = _question_index + 1;
    });
  }

  void start_again_state() {
    setState(() {
      _question_index = 0;
      _total_score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'QuizApp',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 35,
              ),
            ),
          ),
        ),
        body: (_question_index < _questions.length)
            ? Quiz(
                questions: _questions,
                question_index: _question_index,
                answerSelectHandler: _answer_questions,
              )
            : QuizEnd(start_again_state,_total_score),
      ),
    );
  }
}
