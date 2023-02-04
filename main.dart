import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
     return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{     //public to private '_'
  var _questionIndex =0;
  var _totalScore=0;
  void _resetQuiz(){
    setState(() {
    _questionIndex=0;
    _totalScore=0;
  });
  }

  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex =_questionIndex+1;
    });
    print(_questionIndex);

  /*  if(_questionIndex<questions.length)
      {
        print("we have more questions");
      }*/
  }
  Widget build(BuildContext context) {
    var _questions = [
      {'questionText':'What\'s your favorite color?',
        'answers':[{'Text':'Pink','Score':10},
        {'Text':'Red','Score':9},
          {'Text':'Blue','Score':12},
          {'Text':'White','Score':8},
          ],
      },
      {'questionText':'What\'s your favorite animal?',
        'answer':[
          {'Text':'Cat','Score':12},
          {'Text':'Dog','Score':13},
          {'Text':'Fish','Score':10},
          {'Text':'Elephant','Score':9},
        ]},
      {'questionText':'Who\'s your favorite instructor?',
        'answer':[
          {'Text':'Max','Score':9},
          {'Text':'Max','Score':8},
          {'Text':'Max','Score':7},
          {'Text':'Max','Score':10},
        ],},


    ];
    return MaterialApp(home: Scaffold(
        appBar: AppBar(title: Text('My First App'),),
        body: _questionIndex<_questions.length?
            Quiz(answerQuestion:_answerQuestion,
                questionIndex:_questionIndex,
                questions:_questions,
            )
            :Result(_totalScore,_resetQuiz())
    ),
    );
  }
}




