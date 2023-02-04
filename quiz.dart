import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {

final List<Map<String,Object>>questions;
final int questionIndex;
final Function answerQuestion;
Quiz({
  @required this.questions,
  @required this.answerQuestion,
  @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
    Question(questions[questionIndex]['questionText']
        ?.toString() ??''
    ,),
    ... (questions[questionIndex]['answers'] as
    //Map<Widget>(Closure: (Map<String, Object>) => Answer))
    List<Map<String,Object>>).map<Widget>((answer){
    return Answer(()=>answerQuestion(answer['Score']),
        answer['Text']);
    }).toList()
    ],
    );
  }
}