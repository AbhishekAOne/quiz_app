import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function(int) answerSelectHandler;
  List<Map<String,Object>> questions;
  int question_index;

  Quiz({required this.questions,required this.question_index,required this.answerSelectHandler});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Question((questions[question_index]['questionText']) as String),
            ...(questions[question_index]['answers'] as List<Map<String,Object>>)
                .map((answer) {
              return Answer(answer['text'] as String, () => answerSelectHandler(answer['score'] as int));
            }).toList(),
          ],
        );
  }
}