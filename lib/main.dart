import 'package:flutter/material.dart';
import 'question.dart';
import 'result.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  static const questions = [
    {'question': 'What is your favourite color', 'answer': ['red', 'green', 'blue']},
    {'question': 'What is your favourite meal', 'answer': ['beef', 'pork', 'chicken']},
    {'question': 'what is your favorite city', 'answer': ['Nairobi', 'Kisumu', 'Mombasa']},
  ];
  var counter = 0;

  void resets(){
    setState(() {
      counter = 0;
    });
  }
  
  void increment(){
    setState(() {
      counter += 1;
    });

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My APP'),
        ),
        body: counter < questions.length ?
        Column(
          children: [
            Question(questions[counter]['question'].toString()),
            ...(questions[counter]['answer'] as List<String>).map((answer){
              return ElevatedButton(onPressed: increment, child: Text(answer));
            }).toList(),
          ],
        ) :
        Result(resets),
      ) 
      ,);
  }
  
}