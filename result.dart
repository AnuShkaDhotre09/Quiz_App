import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Result extends StatelessWidget {

final int resultScore;
final VoidCallback resetHandler;

Result(int totalScore, void resetQuiz, {
  this.resultScore,
  this.resetHandler
});
String get resultPhrase{
  var resultText='You did it!';
  if(resultScore<=8){
    resultText='You are awsome and innocent';
  }
  else if(resultScore<=12) {
    resultText = 'Preety likeable';
  }
  else if(resultScore<=16)
  {
    resultText='You are Strange';
  }
  else{
    resultText='You are so bad';
  }
  return resultText;
}
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Center(
            child:Text(resultPhrase,
          style: TextStyle(fontSize: 36,
              fontWeight:FontWeight.bold),
            textAlign: TextAlign.center,),
            /*TextButton(
              onPressed:resetHandler,
              child:Text('Restart Quiz'),)*/
          ),
        ],
      )
    ;
  }
}
