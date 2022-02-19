import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answer_name = 'Answer One';
  final VoidCallback selectHandler;

  Answer(this.answer_name, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.black,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            )),
        child: Text(answer_name),
        onPressed: selectHandler,
      ),
    );
  }
}
